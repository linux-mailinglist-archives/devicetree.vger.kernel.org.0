Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99FC2672A6A
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 22:26:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231157AbjARV0N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 16:26:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231154AbjARVZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 16:25:51 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E05C0654CE
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 13:25:35 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so2344875wmb.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 13:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z02Zvvp9rnIkTMvPcvojjoIGvGA32x4pRLqSn0d/D5Q=;
        b=WuH8yHOnPzQoxp37uCaoXhkR8AFCaoD9ntbQBJvKk8ZtPIeEcYZVR5qT6UAp5aRPot
         mlbY4K3BqNnsCZ97fG90dQkBZlN6outU5tX37EGrBjWLGl7uywKzK8/XHMZoEY0BfHVx
         F2KcRJe1D8ufmhm8335igfOfvrRKA+1l9rAwa/XoU1FyTU5HtO+M+9Ml0aFGCJqt/FYf
         h6Rxl6/02buJf40lSCX1T0SfHP3zs4/MtBbK7yYjyRz0IeEQAkpeRe/62ghQ303CxBUD
         DhA5bvQWwfbr5mX5VwBj9jrYy2wtOS43fgXSe+353LHS1rn3DW5kYwepZ6k3lOHak6DG
         6ZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z02Zvvp9rnIkTMvPcvojjoIGvGA32x4pRLqSn0d/D5Q=;
        b=tEHgF+xTWWRd0JyW/S0m7p6iRTxhUYYZY2/hFTSjrXZKxEXowAUhhVvUv96j7nTNbb
         bHWhpCjumwHewpdY3IONumVnpMOnWdpuRDBdJzqLEtpu5w85uJnKKxa+cXMGttJFUoW8
         8fC61gGjM43Cxjeoq4SNFegpbXsoSp3K8q212lKSn8r7YmLa7SQBDF/2WmXU1w2HsO/D
         Zew0w7oHm0JLeYlsf/BVOUIldAq9I3j9WJd4Ez1v6hb6/xQZptyrzIM5tJcN716V+hgh
         yMlUbNZGi7r4oDYtj/u5KaJck6ds1XSBlDC0BKJUOyVXomUSFG0rlp4P3VvwsIg6omHt
         Qm6g==
X-Gm-Message-State: AFqh2kro/JSZWfdQiuV5bjjtZ3pw8dj13LdhiurY+Crk6Oh09saSLcxc
        gYdFpoqDNkJ0uSzPdcqUSXZbYg==
X-Google-Smtp-Source: AMrXdXuuRUr63ls7wGR56IMAO/i/q4UibvwoBS2SM+hobzTQCYLskiXJ88gBrX2HslVcG5iGqJLhcQ==
X-Received: by 2002:a05:600c:b90:b0:3d8:e0d3:ee24 with SMTP id fl16-20020a05600c0b9000b003d8e0d3ee24mr8339211wmb.37.1674077134046;
        Wed, 18 Jan 2023 13:25:34 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n19-20020a05600c4f9300b003d1d5a83b2esm3349230wmq.35.2023.01.18.13.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 13:25:32 -0800 (PST)
Date:   Wed, 18 Jan 2023 23:25:31 +0200
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/8] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Message-ID: <Y8hjy8WRpPh8DVvG@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-2-abel.vesa@linaro.org>
 <Y8giHJMtPu4wTlmA@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y8giHJMtPu4wTlmA@hovoldconsulting.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-01-18 17:45:16, Johan Hovold wrote:
> On Wed, Jan 18, 2023 at 02:53:21AM +0200, Abel Vesa wrote:
> > Document the QMP PCIe PHY compatible for SM8550.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > index 8a85318d9c92..65f26cfff3fb 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > @@ -20,6 +20,8 @@ properties:
> >        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> >        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> >        - qcom,sm8350-qmp-gen3x1-pcie-phy
> > +      - qcom,sm8550-qmp-gen3x2-pcie-phy
> > +      - qcom,sm8550-qmp-gen4x2-pcie-phy
> >  
> >    reg:
> >      minItems: 1
> 
> I don't think I'll have time to look at this week, but I did notice that
> you fail do describe the clocks, regulators, and resets (as you also
> did for the UFS PHY binding) which are currently different from
> sc8280xp.

Hmm, sorry about that. I will double check against the pcie phy nodes I
have for sm8550.

As for the UFS, if your are referring to the following patchset [1], the phy
node looks exactly the same as on sc8280xp, therefore no other binding
update, other than compatible, was needed.

[1] https://lore.kernel.org/all/20230117224148.1914627-2-abel.vesa@linaro.org/

> 
> Please be more careful when adding compatible strings so we get this
> right. You should also double check that the differences are really
> warranted and not just due the vendor using different names for the same
> resource.
> 
> At least the reset must be renamed ("pcie_1_nocsr_com_phy_reset", e.g.
> drop 'pcie' and 'reset', maybe more).
> 
> Johan
