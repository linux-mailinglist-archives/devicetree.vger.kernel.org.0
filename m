Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED22F2AA325
	for <lists+devicetree@lfdr.de>; Sat,  7 Nov 2020 09:02:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727822AbgKGICN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Nov 2020 03:02:13 -0500
Received: from m42-4.mailgun.net ([69.72.42.4]:54834 "EHLO m42-4.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727738AbgKGICN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 7 Nov 2020 03:02:13 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1604736132; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=plywg5V0yX06TOPuyJodo8gnX1VzwIFtl/WJvZY7r5k=;
 b=u0IdA+lyI/5Lknf9kWIr3qjkfRifEgmior4F4tcDkEpEHPJUSsWaYLn7InpL811wmbneUnay
 HTnD3Yi6XkW/KKx47oGQTDQbYC59Bs+dpNCAyygLUNTp2KU/FFEh/Th7uN3rJJo8TkucoRZQ
 L/DudtEGok8Jn78QwMtOIZFnBNc=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5fa6544de41a481b551a32d8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sat, 07 Nov 2020 08:01:17
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id B694AC433CB; Sat,  7 Nov 2020 08:01:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        MISSING_DATE,MISSING_MID,SPF_FAIL,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kvalo)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 141DCC433C6;
        Sat,  7 Nov 2020 08:01:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 141DCC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=kvalo@codeaurora.org
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH 1/2] dt: bindings: add new dt entry for ath11k calibration
 variant
From:   Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20201015131501.1939685-1-sven@narfation.org>
References: <20201015131501.1939685-1-sven@narfation.org>
To:     Sven Eckelmann <sven@narfation.org>
Cc:     linux-wireless@vger.kernel.org, ath11k@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Sven Eckelmann <sven@narfation.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20201107080116.B694AC433CB@smtp.codeaurora.org>
Date:   Sat,  7 Nov 2020 08:01:16 +0000 (UTC)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sven Eckelmann <sven@narfation.org> wrote:

> The bus + qmi-chip-id + qmi-board-id is not enough to identify the correct
> board data file on IPQ6018 based devices. Multiple different boards share
> the same values. Only the original reference designs can currently be
> identified and loaded from the board-2.bin. But these will not result in
> the correct calibration data when combined with the pre-calibration data
> from the device.
> 
> An additional "variant" information has to be provided to select the
> correct board data for a design which was modified by an ODM. This follows
> the same approach as ath10k.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

77581df8639f dt: bindings: add new dt entry for ath11k calibration variant
14f43c5fca57 ath11k: search DT for qcom,ath11k-calibration-variant

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20201015131501.1939685-1-sven@narfation.org/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

