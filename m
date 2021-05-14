Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1CFD3813A3
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 00:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232177AbhENWQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 18:16:33 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:33090 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbhENWQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 18:16:33 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EMFG6c004310;
        Fri, 14 May 2021 17:15:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621030516;
        bh=n2t9T0u8C7nTg9bCDBhKNSqfdja651Q9Ef/RDLVIjIc=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ozfL5uj9BeBetQcNTEQsmBJhm9ClYHdN7t++5Vqc04c12/6jousfkei3YIxucu/OM
         wkoCrrkWF51tCP0H/pfMKFh1Ivex+sGTmI/RM+NBa3AlyoCb4+EAAtYW+6QI7rGG+n
         pBxBW/ean4aPeDwVHsaZa0haJ2egh5vejKNSKev8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EMFGwC121819
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 17:15:16 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 17:15:15 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 17:15:15 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EMFFgh017835;
        Fri, 14 May 2021 17:15:15 -0500
Date:   Fri, 14 May 2021 17:15:15 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-iot2050-common: Disable mailbox
 nodes
Message-ID: <20210514221515.lxsdk5j764eim6m5@explode>
References: <20210514212016.3153-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210514212016.3153-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:20-20210514, Suman Anna wrote:
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

yes, that was the exact intent of pushing to cleanup our yaml to expose
definition issues such as these.. Glad and thanks you are doing this.

Expectation ofcourse is that we get the dts fixups done and merged asap
so that the yaml conversion merges produce a clean dtbs_check - where
ever possible hopefully by 5.14-rc1 (I know it is a tall order given the
scope of conversion pending - but bite at a time).

Jan: Are you OK with this? I think overlays will help introduce the
variations you need with the firmware if there is any.

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
> -- 
> 2.30.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
