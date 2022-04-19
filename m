Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC905062D7
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 05:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241266AbiDSDjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 23:39:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240296AbiDSDjP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 23:39:15 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2170162FF
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 20:36:34 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id s16so4840648oie.0
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 20:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lU62qiMNx0arfmUh5Da57k5+DyOubNWH5tFxNq0qdig=;
        b=ccnhJbk5FaNBOuVV/nnA8lCwOeSSjfFkLv7AixaFuXP6Q+P2VXUyn7VzU4mfW8dBjr
         x5lVNnu295tabyVgpKczuhMib81c2c3hDX4MSNQX+h6dVRogzeVKGjW3cNqn+QIcLcI+
         SKj6r6ts3dg0dEhuUB4ilXc2cqkhAN1Z8IID8asdIjIPPdWYQTJEMAeIrTlaWRIGX2QS
         U1MwbRY9dgVrotBaLFhqCfmkgh/ry5ybBspxA1PkPl+jxjmw0P8cEnAITzxT7IZ+5g8g
         YvyfNQ2ae/4Y8iWfHa84aSR3dXlPCZUoX+0FoUvJ8Qaem9gsyHy5uCHCVU08Zm24K7TM
         uwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lU62qiMNx0arfmUh5Da57k5+DyOubNWH5tFxNq0qdig=;
        b=0Vkur5MKfAIyV2kTm9mcGQsS1kEVwzqsBvw/tSZntBgGXy9MznUUUvbgZe39PwYr9S
         sMqDlDZ+nwdIRIg5QNYsTviu6wdxUl1LdYlLPpNp2vT4RR3VFF1iVGOaVtQhaUelRK69
         Dq5sViEeFFxl2eVLwJ7xFrlZaSIZBtxUTSy3DuEFVBf9B/Ns5LuDTivicgsBJ6BX/NVc
         DtwOLRkcjXWslRCID1etu+gBBkzR2ovbnWRsGOlSx/9SwjouHjthHo+2erJXpW540iM/
         q9NcqZE35qsxfU1NyU9kX/d+2oxZpuiCQaXjB//Y7T124wH90+EhBZUEDnbBefv7m/Hl
         YOOg==
X-Gm-Message-State: AOAM5318YzXx0Md9nYwlHtSYqoPGahcmkW+0vNhy/rL8IKaudVE2YfIE
        FciooRRfTc+vGgHYiBMn3wytxeqjLuFR9aFWlQuDvw==
X-Google-Smtp-Source: ABdhPJxnueYo1hwjt8S0e82NKKMm6bqJrkcxGFtoSuRywWbD2amSha1sVxCFvYPFWI9IRFXQg4bP8SrcFRTexafDHQE=
X-Received: by 2002:a05:6808:dc3:b0:2ef:86e7:a0b with SMTP id
 g3-20020a0568080dc300b002ef86e70a0bmr6437888oic.48.1650339393324; Mon, 18 Apr
 2022 20:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-3-bhupesh.sharma@linaro.org> <CAA8EJpqh1pTfNR2Qd7p69i4VvqPNtbd5gOjO-TYdWTTG1rKrrA@mail.gmail.com>
In-Reply-To: <CAA8EJpqh1pTfNR2Qd7p69i4VvqPNtbd5gOjO-TYdWTTG1rKrrA@mail.gmail.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 19 Apr 2022 09:06:22 +0530
Message-ID: <CAH=2NtxqRyZ4tOZKu1m3pRR9TgVBpQZq5ExDXF=di85HzVDa=w@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        bhupesh.linux@gmail.com, agross@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 Apr 2022 at 04:04, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Mon, 18 Apr 2022 at 23:55, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > Since a few boards based on QCoM qmp phy use the
> > 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> > describe the ufs phy nodes, add them to the dt-bindings doc as well.
>
> Ugh. They give a false sense that they are supported. I think in
> reality they are not used by the kernel.
> So, ideally, this patch should be accompanied with regulator core change.
> Or (better) drop them completely.

Indeed. However, the earlier reviews were contrary to this
understanding. Maybe, @Bjorn Andersson can help with more background
on the same.

Although I agree that since this appears mainly in sm8450 and sm8350
dts and is relevant for ufs qmp phy nodes, I can send patches for
cleaning up the dts files instead.

My hunch is that these have been copied over into the qcom dts/dtsi
files from the similar  ones described in [1].

[1]. https://www.kernel.org/doc/Documentation/devicetree/bindings/ufs/ufs-qcom.txt

Thanks,
Bhupesh


> >
> > This fixes the following '$ make dtbs_check' warning(s):
> >
> > sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
> >   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
> >    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Acked-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > index c39ead81ecd7..411c79dbfa15 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > @@ -90,6 +90,14 @@ properties:
> >      minItems: 1
> >      maxItems: 3
> >
> > +  vdda-max-microamp:
> > +    description:
> > +      Specifies max. load that can be drawn from phy supply.
> > +
> > +  vdda-pll-max-microamp:
> > +    description:
> > +      Specifies max. load that can be drawn from pll supply.
> > +
> >    vdda-phy-supply:
> >      description:
> >        Phandle to a regulator supply to PHY core block.
> > --
> > 2.35.1
> >
>
>
> --
> With best wishes
> Dmitry
