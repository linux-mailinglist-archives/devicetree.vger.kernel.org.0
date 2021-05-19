Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91427389457
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 19:03:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355471AbhESREz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 13:04:55 -0400
Received: from gecko.sbs.de ([194.138.37.40]:40225 "EHLO gecko.sbs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1355499AbhESREw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 May 2021 13:04:52 -0400
X-Greylist: delayed 516 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 May 2021 13:04:51 EDT
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
        by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id 14JGsgeg018415
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 19 May 2021 18:54:43 +0200
Received: from [167.87.3.33] ([167.87.3.33])
        by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 14JGp03V024652;
        Wed, 19 May 2021 18:51:00 +0200
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-iot2050-common: Disable mailbox
 nodes
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210514212016.3153-1-s-anna@ti.com>
From:   Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <a595cfc5-1338-b93b-c7fc-9dd7eeee9e2d@siemens.com>
Date:   Wed, 19 May 2021 18:50:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514212016.3153-1-s-anna@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.05.21 23:20, Suman Anna wrote:
> There are no sub-mailbox devices defined currently for both the
> IOT2050 boards. These are usually dictated by the firmwares running
> on the R5F remote processors and the applications they provide.
> Defining the actual sub-mailboxes will also dictate the interrupts
> the clusters will use for interrupts on the Cortex-A53 cores.
> 
> Disable all of the Mailbox clusters until the sub-mailboxes are
> defined and used. This fixes the warnings around the missing
> interrupts with the upcoming conversion of the OMAP Mailbox binding
> to YAML format.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> Hi Nishanth,
> 
> I will be posting the conversion of the OMAP Mailbox binding to YAML
> sometime next week to deal with the current dtbs_check warnings seen
> with these nodes on all K3 SoCs. It is kinda of a chicken and egg
> problem w.r.t when you want all warnings gone, and this is in
> preparation towards that. It also follows anyway the expected style
> for Mailbox unless you add the usable mailbox sub-device nodes and
> the interrupts they use.
> 
> regards
> Suman
> 
>  .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> index de763ca9251c..f4ec9ed52939 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> @@ -653,3 +653,51 @@ &pcie1_rc {
>  &pcie1_ep {
>  	status = "disabled";
>  };
> +
> +&mailbox0_cluster0 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster1 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster2 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster3 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster4 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster5 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster6 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster7 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster8 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster9 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster10 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster11 {
> +	status = "disabled";
> +};
> 

Acked-by: Jan Kiszka <jan.kiszka@siemens.com>

Thanks,
Jan

-- 
Siemens AG, T RDA IOT
Corporate Competence Center Embedded Linux
