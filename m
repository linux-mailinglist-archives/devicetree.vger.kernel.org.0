Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E105D6E6BD7
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 20:12:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230454AbjDRSMR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 14:12:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbjDRSMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 14:12:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB7030E4
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 11:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681841486;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=a2NJ2p6cE8nPnq4qyhSh+ydMCNdO89r7It+YsHhkzyo=;
        b=OcMnzB/5dYp5cvM/ia55ci3fw+/l0IJd0EjoGHQ5PoiPdkxtOTB6Q9+m6CSJi/GO3mhXM4
        W3Vr3CQthBniCkn+7jd/vPz56ZQfkNpZkcXlpdTjMx0PBIMxDt90LMg/BvXJFYl7ZpCWR+
        xqu7ZhR5wuGGv42hnmQ4fwGUnNrEcb0=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-277-mv1MBvC1OPOyCLwssFf_Ig-1; Tue, 18 Apr 2023 14:11:24 -0400
X-MC-Unique: mv1MBvC1OPOyCLwssFf_Ig-1
Received: by mail-qt1-f200.google.com with SMTP id f36-20020a05622a1a2400b003deb2fa544bso21144802qtb.0
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 11:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681841484; x=1684433484;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a2NJ2p6cE8nPnq4qyhSh+ydMCNdO89r7It+YsHhkzyo=;
        b=cuQ6XxpuSXqFK76xKvwTA5Ech8v5jWCmo4firkE+5A9IvJfTWdks2CtlxqioOYpvPh
         /vrgWEqhgZanD+wf2rWe474TsdIL2szgeaJv7U+tDMvwST9aSbuaR80PX+7AvtPRrt1l
         ELjfvPoPmAnJoPm0jPSLHMZzBi+iNp1lIGrPwclYpzbvSmgc6tbO6r0Wp2S7g1UfACPN
         T6tx7pfKmo5Si8gaava6T0tBanWMxkGOfFhH3CnBkShvwol5RJ9qIif1cxZWq7g/yEPk
         EPhCSwJdeALvOWW/k8cwCYSPAThk87iK0YyG+iWDwYuq6IvNZTlq0blhZYhqMY9O1nvx
         0DMQ==
X-Gm-Message-State: AAQBX9cCs+XTa2kI/vHubHH1+cpbtefcOfQJgMEUa6pKsLBhcofl9v1Z
        mvMhhUAzz/GgfW+gHP5DC9LC7piUDPxNNQ/IMH1ZrTX05DAMnt72/tr1vJKs2U7BcMlfj4RJA/j
        8a5uSAwp1FtmAlbfG6d2Xg9t4jUUjPKTu
X-Received: by 2002:a05:6214:508b:b0:5e0:7ecb:8ffb with SMTP id kk11-20020a056214508b00b005e07ecb8ffbmr23344886qvb.8.1681841484164;
        Tue, 18 Apr 2023 11:11:24 -0700 (PDT)
X-Google-Smtp-Source: AKy350a3GbO3FdgQzclKEsUIQPHtPQW7EW4y+mIxxoj0/PCOcdeWVYhW6FGqFVxxMO5MsPFGAYyE5w==
X-Received: by 2002:a05:6214:508b:b0:5e0:7ecb:8ffb with SMTP id kk11-20020a056214508b00b005e07ecb8ffbmr23344854qvb.8.1681841483879;
        Tue, 18 Apr 2023 11:11:23 -0700 (PDT)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id kr24-20020a0562142b9800b005eee320b5d7sm3812683qvb.63.2023.04.18.11.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 11:11:23 -0700 (PDT)
Date:   Tue, 18 Apr 2023 14:11:26 -0400
From:   Eric Chanudet <echanude@redhat.com>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Parikshit Pareek <quic_ppareek@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sa8775p: pmic: add the sdam_0
 node
Message-ID: <20230418181126.yu7ym5acb3x5twex@echanude>
References: <20230417145536.414490-1-brgl@bgdev.pl>
 <20230417145536.414490-4-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230417145536.414490-4-brgl@bgdev.pl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 17, 2023 at 04:55:36PM +0200, Bartosz Golaszewski wrote:
> From: Parikshit Pareek <quic_ppareek@quicinc.com>
> 
> Introduce sdam_0 node, which is to be used via nvmem for power on
> reasons during reboot. Add supported PoN reaons supported via sdam_0
> node.
> 
> Signed-off-by: Parikshit Pareek <quic_ppareek@quicinc.com>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

Tested-by: Eric Chanudet <echanude@redhat.com>

> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> index 5abdc239d3a6..3c3b6287cd27 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
> @@ -88,6 +88,14 @@ trip1 {
>  			};
>  		};
>  	};
> +
> +	reboot-mode {
> +		compatible = "nvmem-reboot-mode";
> +		nvmem-cells = <&reboot_reason>;
> +		nvmem-cell-names = "reboot-mode";
> +		mode-recovery = <0x01>;
> +		mode-bootloader = <0x02>;
> +	};
>  };
>  
>  &spmi_bus {
> @@ -133,6 +141,19 @@ pmm8654au_0_gpios: gpio@8800 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		pmm8654au_0_sdam_0: nvram@7100 {
> +			compatible = "qcom,spmi-sdam";
> +			reg = <0x7100>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x7100 0x100>;
> +
> +			reboot_reason: reboot-reason@48 {
> +				reg = <0x48 0x1>;
> +				bits = <1 7>;
> +			};
> +		};
>  	};
>  
>  	pmm8654au_1: pmic@2 {
> -- 
> 2.37.2
> 

-- 
Eric Chanudet

