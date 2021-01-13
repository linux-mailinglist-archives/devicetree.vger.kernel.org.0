Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF2502F4357
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 05:52:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726249AbhAMEud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 23:50:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725818AbhAMEud (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 23:50:33 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5CD2C061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:49:52 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id h10so471650pfo.9
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QX/ze9rolVE5iF8EAM67G7/PGvIWPosPnHzbR0maqi0=;
        b=k6JhKHkm/INZ1FMjQ/e1svvSkQSSIFaydOGvjUgVjMEX/EHZwpilucrYULdNeq6ENv
         fOvcNaSLiGRbauHfNP+fPeBUK5T+dpV3Tr46HTjKQB9XGUSck/zA5qgUR9l8eGr+Sezq
         g7mWofMOL91RLQWIt+KS8s7vXjWM/OQ4gSdx2jUlAenHRyyOuXfLaK0uy5rGFcaLHkzC
         KMyZCJWVX/eNktSYaDrod9hmEO2hoiA+0LfwLsKyCaJfOkyseQNNTDCtSKKP203uJaNV
         RSSpTAVk80h+Nok9Aj3Qn9uqdeOzBAoq1xHwVBHm5PqLF/l/JVi3gbi5ehsok8I83UsG
         x21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QX/ze9rolVE5iF8EAM67G7/PGvIWPosPnHzbR0maqi0=;
        b=ITrGiNGswOZAmj7xXfC7BRZIoDfWpjL0wnh9wM9hB5LvnHWqN5YPGQllnUDzgOKTew
         SntBRruNIqdHBpRgtdUOtQ51nydPqMm/QWt6GnX9ebHpziiS7i9Zzx4LdHKcbSrUUmoV
         v5gwznzdCXzCB6pP3KmsE982TnzCmvKF/TdhXSx8RA/9xoszOD90UdRH+wxSxTMT2bLi
         rhb6VzDY7FhqqTHpkwbkAgF3X2R9g8+4Xo++JQJXqDWl9+sIca+Gx5CxFCziOboj3uS1
         YxcI6M113ffJwksMTTWAucRJEyyX+E0Rg3cdJTSh8cIogfXhc3Ju3spGTXHHbBq8dYZD
         53/Q==
X-Gm-Message-State: AOAM531q0p/sRcwEsJBUi+fYMTcvZn+1sH6W3QliFsDZIuqgiXAbbFj9
        UwxMM3opeNe8BhLZ2tzq/YE=
X-Google-Smtp-Source: ABdhPJxv5XsBIytgzBnoZeIJv0uAdBE93AeEP9LNmHY8iqLO+Jx7D1a/xluy8cO2FsNHLudcovz7vg==
X-Received: by 2002:a63:c444:: with SMTP id m4mr364599pgg.420.1610513392353;
        Tue, 12 Jan 2021 20:49:52 -0800 (PST)
Received: from [10.230.29.29] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id x1sm832062pfj.95.2021.01.12.20.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 20:49:51 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: describe PMB block
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210112192723.751-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a2b3a65e-ea16-13f4-d145-dac70c75fbed@gmail.com>
Date:   Tue, 12 Jan 2021 20:49:49 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210112192723.751-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/12/2021 11:27 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> PMB (Power Management Bus) controls powering connected devices (e.g.
> PCIe, USB, SATA). In BCM4908 it's a part of the PROCMON block.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> Florian: this patch is based on top of the
> [PATCH] arm64: dts: broadcom: bcm4908: describe internal switch
> one. Both modify "ranges".
> ---
>  .../boot/dts/broadcom/bcm4908/bcm4908.dtsi      | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> index 0b44f32fdef1..882953885bfc 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> @@ -108,7 +108,7 @@ soc {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		ranges = <0x00 0x00 0x80000000 0xd0000>;
> +		ranges = <0x00 0x00 0x80000000 0x281000>;
>  
>  		usb@c300 {
>  			compatible = "generic-ehci";
> @@ -213,6 +213,21 @@ phy12: phy@c {
>  				};
>  			};
>  		};
> +
> +		procmon: syscon@280000 {
> +			compatible = "simple-mfd";

Likewise, I would use "simple-bus" here instead of "simple-mfd" even if
this does not create a functional difference.
-- 
Florian
