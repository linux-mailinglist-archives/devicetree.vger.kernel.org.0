Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D996B45702E
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 15:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235070AbhKSODr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 09:03:47 -0500
Received: from dvalin.narfation.org ([213.160.73.56]:43996 "EHLO
        dvalin.narfation.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230161AbhKSODr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 09:03:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
        s=20121; t=1637329888;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=gbObE9ucGPXTlt67EJ6vFWsn9MjX4s/zPYYmj7eYKSM=;
        b=rGchiJcmaMzPocBsBJ2kmggvW3JPwWupjAHWrT+qwgRVasYjajj1zcjc4BaYBFyhL98Mb0
        t+hY9y5tGhuHFW094XCMQooEB7KIf3HYzcXbkvU7uBne0s15lhzEA3jFGOPWANx3N3FhRV
        Th1Iwef5DL+J/AB3NfhSFx9picjCM4Q=
From:   Sven Eckelmann <sven@narfation.org>
To:     ath11k@lists.infradead.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, Anilkumar Kolli <akolli@codeaurora.org>
Subject: Re: [PATCH v2 2/2] ath11k: Use reserved host DDR addresses from DT for PCI devices
Date:   Fri, 19 Nov 2021 14:51:25 +0100
Message-ID: <8643453.gy25EnUU4W@sven-l14>
In-Reply-To: <1637082058-6398-2-git-send-email-akolli@codeaurora.org>
References: <1637082058-6398-1-git-send-email-akolli@codeaurora.org> <1637082058-6398-2-git-send-email-akolli@codeaurora.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tuesday, 16 November 2021 18:00:58 CET Anilkumar Kolli wrote:
[...]
> @@ -1866,10 +1867,62 @@ static int ath11k_qmi_alloc_target_mem_chunk(struct ath11k_base *ab)
>  
>  static int ath11k_qmi_assign_target_mem_chunk(struct ath11k_base *ab)
>  {
> -	int i, idx;
> +	struct device *dev = ab->dev;
> +	struct device_node *hremote_node = NULL;
> +	phandle hremote_phandle;
> +	int i, idx, len, sw, aw, host_ddr_sz;
> +	u32 *reg, *reg_end;
> +	u64 start, size;
>  
>  	for (i = 0, idx = 0; i < ab->qmi.mem_seg_count; i++) {
>  		switch (ab->qmi.target_mem[i].type) {
> +		case HOST_DDR_REGION_TYPE:
> +			if (of_property_read_u32(dev->of_node, "memory-region",
> +						 &hremote_phandle)) {
> +				ath11k_dbg(ab, ATH11K_DBG_QMI,
> +					   "qmi fail to get hremote phandle\n");
> +				return 0;
> +			}
> +
> +			hremote_node = of_find_node_by_phandle(hremote_phandle);
> +			if (!hremote_node) {
> +				ath11k_dbg(ab, ATH11K_DBG_QMI,
> +					   "qmi fail to get hremote_node\n");
> +				return 0;
> +			}
> +

Why aren't you using something like of_address_to_resource? Or some other 
__of_get_address related function.

> +			aw = of_n_addr_cells(hremote_node);
> +			sw = of_n_size_cells(hremote_node);
> +
> +			reg = (unsigned int *)of_get_property(hremote_node, "reg", &len);
> +			if (!reg) {
> +				ath11k_dbg(ab, ATH11K_DBG_QMI,
> +					   "qmi fail to get reg from hremote\n");
> +				return 0;
> +			}
> +
> +			reg_end = reg + len / (aw * sw);

Why are you multiplying aw with sw? And why are you then dividing len by it?

1. if you calculate (u32 *)x + 1 then then you would increase the address by 4 bytes.
2. for each address + size pair you would have (aw + sw) * 4 bytes
3. len is in bytes

So if you want to get the first byte after a full u32 reg buffer then it would be:

    reg + len / sizeof(u32);

If you would want to get the amount of full address+size pairs

    len / sizeof(u32) / (aw + sw)


> +
> +			do {
> +				start = of_read_number(reg, aw);
> +				reg += aw;
> +				size = of_read_number(reg, sw);
> +				reg += sw;
> +			} while (reg < reg_end);

What are you trying to achieve with this loop?

Kind regards,
	Sven


