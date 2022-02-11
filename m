Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F13A94B2B79
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 18:12:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231976AbiBKRMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 12:12:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242503AbiBKRMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 12:12:23 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6DF2E8
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 09:12:22 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id t36so6548180pfg.0
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 09:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uMStnxn1qnw1RpVdflTU2ahxr59rjj1OmGYRPiBcmd4=;
        b=fJOlIT0l3XvL1dOrFX5wmfXEQX0hnQEVKyPsBeJRa/n5TZJSe4qbeHX6MFx8Otg4A5
         HFW/YUPHxW4coq12JceEcfLS3SBwgMGlOwvMQ3H8UIbwzVHXUgl82fg9BWPcUKrHK1kX
         4t8qVOq0anGFBqhVqXNtse8n44eMiuxyNtE0udWy9hcZR5DJd9vqRUdIjnEPtphROK5Q
         bh/tCRpDSK8sju/FMAD5+mQE+gN+/pqJuzkhSJxSen6YhkeFWEW8dTRrm8OM7izjukPW
         nurseE/kZU8bi/VV6CBzVaZ4A3q1AHOvl0vrfYBzbivtge+hpKLaPp1ctN1+Q6lLOB24
         8nTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uMStnxn1qnw1RpVdflTU2ahxr59rjj1OmGYRPiBcmd4=;
        b=TxCX0n0jU6lbSlNOvg47D2/ShNzn1q87FnDOz4qcfyGZ0hescLI/TUAUZWNGOmcltC
         748Osy7LaCvwM79tLUDCYsXrlqHZbUhj6vhQESmACUo8qQpK0ZF7xH/WvTVW2VRJ/jR2
         RWaoW6VyVc/oze3aN7hRxyqFogCgrLfWS6Kd5XfjoJQ1CgFLByTaM9hVsBHkhtJYXMa1
         hLA2gziQ/hNDSg/0aNCJvKWbVptmdCYY7yiO8qmW+TOLgmhcOAnieresUAFw3tZgEENw
         kVfs/NGNDzNJMVMOr1fDVdGCUPpF7NvVViWg3x9tkv/4EQYQlS+XrjYYG/ecY0lgsNMT
         Q2Bw==
X-Gm-Message-State: AOAM531+99MvSXXSFwA4c4cZAIt3ulRp4NUoyZhXZq8qoJpfEYXOUx+t
        dG2B0TUZSuMa2Wx/wfeNqAQ=
X-Google-Smtp-Source: ABdhPJxin2o0QHhbnIwS1lZ1JChyl2xcYPtgvDJphBQvM8ighDfxWgmXB1XPUfS4aWmBO7O35GHZfw==
X-Received: by 2002:a05:6a00:2451:: with SMTP id d17mr2661622pfj.70.1644599541826;
        Fri, 11 Feb 2022 09:12:21 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id c4sm15763998pfl.131.2022.02.11.09.12.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 09:12:21 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: add I2C block
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kamal Dasu <kdasu.kdev@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220211103306.15271-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bad768ae-43b2-b8d5-4e98-d50e316a5601@gmail.com>
Date:   Fri, 11 Feb 2022 09:12:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220211103306.15271-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Kamal,

On 2/11/22 2:33 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 uses the same I2C hw as BCM63xx / BCM67xx / BCM68xx SoCs.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> index b0bc5262beca..9ae298e7d6cf 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> @@ -464,6 +464,15 @@ nandcs: nand@0 {
>  			};
>  		};
>  
> +		i2c@2100 {
> +			compatible = "brcm,brcmstb-i2c";

We should be making it clearer in the DT binding, but this should be
brcm,brcmper-i2c since that was the compatible string added for the DSL
class of chips, I forgot whether Kamal had to key off that compatible or
not, it does not look it.
-- 
Florian
