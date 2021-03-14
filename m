Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74A4033A29C
	for <lists+devicetree@lfdr.de>; Sun, 14 Mar 2021 05:17:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233791AbhCNEQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 23:16:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231756AbhCNEQn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 23:16:43 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE51C061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 20:16:43 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id 75so5534807otn.4
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 20:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=UVJggSuVQwIjnEYAiqMXk1oXh8toVv2eEkeULAIZFBk=;
        b=OPrHhWMHN4CrOK1eZV3Y6VeTCOxxeWhIJTOHrJvPIyxdXSsXPB/NwE8vwlAe+eBIzK
         pJkn/DrOqhvldlBuw+pDHcZjVOW3r9CYUTFJUzGm+uwVNuvgIHfXZEZKJ3VVeIwpQg0z
         bjnt3PJRW1osw1KEW5dUqXZ2kaDg46fOe4hDpGp5o3mJ+RuynaAFhIsHALYBHwGcGUMJ
         O7p2CmrJwyxDOrjJtWqIBy3AOFHfyxZbJR+JeycIJzaneYOOxwXamoOjMm+TN93NlkmB
         qCvZYcGnmoLcjDDz3RvAXL9T665S+4M+abn+8JqmT4YJhGfA9rnJM1/9jP89qaU6PmE3
         WElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UVJggSuVQwIjnEYAiqMXk1oXh8toVv2eEkeULAIZFBk=;
        b=ZbuSPqdcHbIGf0WCpS/w2EQdr/tWc4ck0ibbmfm4uQ/RJwfNYTmuyiKveMZ7Dpmqjc
         /6TOMuwNpNITiMDYXGD+a1JPHZUYntMU7yeHIA1mullvuPPpJ2tmgACokzk3YU/LLQVT
         5C0U2DZHU5qFpOEagjBGkJHpzO7Z9FtcQDFJ2V91cWhTyTO45AdF44HAXPrzSszGxDm6
         jksCQ3nP6kbXCOm4RUVRp7mB8wl8Gm1B66dmap5evzUWTQjbGPfW4n5gvXY6vIkcMW+o
         KDkUQjBdKh5ued+wk84yWfNbgpL8lQqVVsXrGiXKBbMaV+wLKIIE1eFB6EEsDAaQmvxG
         ZBNg==
X-Gm-Message-State: AOAM530XMovjEWOaxcIkajKQQqKyyij7tUtasTSsld22pKgNOoTxbW+e
        NGB9poB+qA4G5sw96RYei4vcbw==
X-Google-Smtp-Source: ABdhPJzl6OAxMKKKHFAGhrwdF8uYjqyObOWNdP9tJqPNy2zF5TffI2unBLghZATf60ukU0YxcgOeCA==
X-Received: by 2002:a9d:5191:: with SMTP id y17mr9327284otg.332.1615695401970;
        Sat, 13 Mar 2021 20:16:41 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 3sm4775170ood.46.2021.03.13.20.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 20:16:41 -0800 (PST)
Date:   Sat, 13 Mar 2021 22:16:39 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Sibi Sankar <sibis@codeaurora.org>, p.zabel@pengutronix.de,
        robh+dt@kernel.org, agross@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sc7280: Add nodes to boot WPSS
Message-ID: <YE2OJz1pI81Uj8DA@builder.lan>
References: <1615269111-25559-1-git-send-email-sibis@codeaurora.org>
 <1615269111-25559-7-git-send-email-sibis@codeaurora.org>
 <161567197220.1478170.12600358804299446135@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <161567197220.1478170.12600358804299446135@swboyd.mtv.corp.google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 13 Mar 15:46 CST 2021, Stephen Boyd wrote:

> Quoting Sibi Sankar (2021-03-08 21:51:51)
> > Add miscellaneous nodes to boot the Wireless Processor Subsystem on
> 
> Maybe add (WPSS) after the name so we know they're related.
> 
> > SC7280 SoCs.
> > 
> > Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> > ---
> > 
> > https://patchwork.kernel.org/project/linux-arm-msm/list/?series=438217
> > Depends on ipcc dt node enablement from ^^ 
> > 
> >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 143 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 143 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index 18637c369c1d..4f03c468df51 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -244,12 +251,131 @@
> >                 reg = <0 0x80000000 0 0>;
> >         };
> >  
> > +       tcsr_mutex: hwlock {
> > +               compatible = "qcom,tcsr-mutex";
> > +               syscon = <&tcsr_mutex_regs 0 0x1000>;
> > +               #hwlock-cells = <1>;
> > +       };
> 
> Is this node in the right place? I think the node above it is 'memory'?
> In which case 'hwlock' comes before 'memory' alphabetically.
> 

Thanks for spotting this, as it's no longer acceptable to have a
standalone "syscon" node I was asked to rewrite the binding for this a
few months ago. So the tcsr_mutex should now be represented with a reg
under /soc.

> > +
> > +       smem {
> > +               compatible = "qcom,smem";
> > +               memory-region = <&smem_mem>;
> > +               hwlocks = <&tcsr_mutex 3>;
> > +       };
> > +
> >         firmware {
> >                 scm {
> >                         compatible = "qcom,scm-sc7280", "qcom,scm";
> >                 };
> >         };
> >  
> > +       smp2p-adsp {
> > +               compatible = "qcom,smp2p";
> > +               qcom,smem = <443>, <429>;
> > +               interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
> > +                                            IPCC_MPROC_SIGNAL_SMP2P
> > +                                            IRQ_TYPE_EDGE_RISING>;
> > +               mboxes = <&ipcc IPCC_CLIENT_LPASS
> > +                               IPCC_MPROC_SIGNAL_SMP2P>;
> > +
> > +               qcom,local-pid = <0>;
> > +               qcom,remote-pid = <2>;
> > +
> > +               adsp_smp2p_out: master-kernel {
> > +                       qcom,entry-name = "master-kernel";
> > +                       #qcom,smem-state-cells = <1>;
> > +               };
> > +
> > +               adsp_smp2p_in: slave-kernel {
> > +                       qcom,entry-name = "slave-kernel";
> > +                       interrupt-controller;
> > +                       #interrupt-cells = <2>;
> > +               };
> > +       };
> > +
> > +       smp2p-cdsp {
> > +               compatible = "qcom,smp2p";
> > +               qcom,smem = <94>, <432>;
> > +               interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
> > +                                            IPCC_MPROC_SIGNAL_SMP2P
> > +                                            IRQ_TYPE_EDGE_RISING>;
> > +               mboxes = <&ipcc IPCC_CLIENT_CDSP
> > +                               IPCC_MPROC_SIGNAL_SMP2P>;
> > +
> > +               qcom,local-pid = <0>;
> > +               qcom,remote-pid = <5>;
> > +
> > +               cdsp_smp2p_out: master-kernel {
> > +                       qcom,entry-name = "master-kernel";
> > +                       #qcom,smem-state-cells = <1>;
> > +               };
> > +
> > +               cdsp_smp2p_in: slave-kernel {
> > +                       qcom,entry-name = "slave-kernel";
> > +                       interrupt-controller;
> > +                       #interrupt-cells = <2>;
> > +               };
> > +       };
> > +
> > +       smp2p-mpss {
> > +               compatible = "qcom,smp2p";
> > +               qcom,smem = <435>, <428>;
> > +               interrupts-extended = <&ipcc IPCC_CLIENT_MPSS
> > +                                            IPCC_MPROC_SIGNAL_SMP2P
> > +                                            IRQ_TYPE_EDGE_RISING>;
> > +               mboxes = <&ipcc IPCC_CLIENT_MPSS
> > +                               IPCC_MPROC_SIGNAL_SMP2P>;
> > +
> > +               qcom,local-pid = <0>;
> > +               qcom,remote-pid = <1>;
> > +
> > +               modem_smp2p_out: master-kernel {
> > +                       qcom,entry-name = "master-kernel";
> > +                       #qcom,smem-state-cells = <1>;
> > +               };
> > +
> > +               modem_smp2p_in: slave-kernel {
> > +                       qcom,entry-name = "slave-kernel";
> 
> Do these names need to have 'master' and 'slave' in them? We're trying
> to avoid these terms. See Documentation/process/coding-style.rst Section
> 4 naming.
> 

They need to match the naming in the firmware, but I would welcome a
future change to something in line with the coding style and simply more
descriptive.

Regards,
Bjorn

> > +                       interrupt-controller;
> > +                       #interrupt-cells = <2>;
> > +               };
> > +
> > +               ipa_smp2p_out: ipa-ap-to-modem {
> > +                       qcom,entry-name = "ipa";
> > +                       #qcom,smem-state-cells = <1>;
> > +               };
> > +
> > +               ipa_smp2p_in: ipa-modem-to-ap {
> > +                       qcom,entry-name = "ipa";
> > +                       interrupt-controller;
> > +                       #interrupt-cells = <2>;
> > +               };
> > +       };
> > +
