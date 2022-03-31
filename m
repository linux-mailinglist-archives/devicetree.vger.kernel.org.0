Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 780C34EE33A
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 23:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236195AbiCaVUW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 17:20:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237187AbiCaVUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 17:20:21 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F601277F
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 14:18:32 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-df26ea5bfbso672597fac.1
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 14:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=5tewtVH4AG8KY8Zi+lKOWP3q7/lgqF7baGpu82kuyIY=;
        b=HO/XidmOh6O1mLaZzRwaAWMD0ksLSqOqNih/0cePtCkm2XfI0APg5sbKHiY3iYDGOp
         n7hMPpU71o8VdW7qv+/U31BxUhJAGl0zjsBIfAhSLlhrvqyOh3AIPha1kEh6Zaed5Ekv
         dSzISimULrt7G8ZyRN8LfeKEgbxly/wdrwseY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=5tewtVH4AG8KY8Zi+lKOWP3q7/lgqF7baGpu82kuyIY=;
        b=Lj6REg8cG4IOHOPXoL7tTsLxSuap/FKmN849fYeWcJL920/IYGoL0xKroHrQLTy9Ht
         3mhcWPdbTpUmpJGxuhRyaS7qbZuSI1IkJd2+T10Jvp6lq56i6E8LwutYRLju0yNLalED
         42fhfV2mwoiRsdD68//cqVtBxXo0eVRtsCJSH1vqcuPCmnHqfEF7ANqQ5WhHBr+HgYK0
         c7mq/OlJFPawg382joseB5uselehA+6CUPcYnzHmumSwaCp4Qyi7HRDFZ/ncBHYOzywQ
         9s+wBKm8HVaR4090wcqKYeCRefnvgIvPiVqHghOwFyizr6pQGIHaTRnL5X8wqLAHU9Bk
         GxnQ==
X-Gm-Message-State: AOAM530rxxJWB/dWyLqikKQZzEi40TL4aXHngQaQ1Iwhnr8iIAsPtNYK
        2P+l/eGrVVD45t2cbrJeRQYHdHNN3V37ufC4a/tlEA==
X-Google-Smtp-Source: ABdhPJzMwsXdxTR0m9DYSxxmGH1ubNPKIIiNyFd3yZQzwSM5ILbKgnGh4kEAwRu0jrUAIArl5nrbGYO2Ot1jNJJJzW0=
X-Received: by 2002:a05:6870:46ac:b0:de:5d48:9d27 with SMTP id
 a44-20020a05687046ac00b000de5d489d27mr3646771oap.63.1648761511849; Thu, 31
 Mar 2022 14:18:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 31 Mar 2022 14:18:31 -0700
MIME-Version: 1.0
In-Reply-To: <094d8faa-c42b-be1b-cf92-04232d618a3e@quicinc.com>
References: <1648209491-30165-1-git-send-email-quic_c_skakit@quicinc.com>
 <1648209491-30165-8-git-send-email-quic_c_skakit@quicinc.com>
 <CAE-0n511eQTnJHqt0B=uiiSjigy-RHZ52YuYz4kfEpX1x6CMfw@mail.gmail.com> <094d8faa-c42b-be1b-cf92-04232d618a3e@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 31 Mar 2022 14:18:31 -0700
Message-ID: <CAE-0n52CVuc_kQbpwEnHEEODS8jPt52v6P=gAdVxqenPu4ehkw@mail.gmail.com>
Subject: Re: [PATCH V8 7/7] arm64: dts: qcom: sc7280: Add pm8008 support for sc7280-idp
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya Kakitapalli <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya Kakitapalli (Temp) (2022-03-30 03:44:01)
>
> On 3/25/2022 11:18 PM, Stephen Boyd wrote:
> >       #include "pm8008.dtsi"
> >
> > and then the nodes below.
>
>
> You mean
>
> pm8008_bus: &i2c1 {
>
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D "okay";
>
> };
>
> &pm8008_bus {
>
>  =C2=A0=C2=A0=C2=A0 #include "pm8008.dtsi"
>
> };
>
> and remaining nodes, right?
>

No. I meant what I wrote.


       &pm8008_bus: &i2c1 {
               status =3D "okay";
       };

       #include "pm8008.dtsi"

and then the pm8008.dtsi file would have

	&pm8008_bus {
		pm8008: pmic@8 {
			compatible =3D "qcom,pm8008";
			...
		};

		pm8008_regulators: regulators@9 {
			compatible =3D "qcom,pm8008-regulators";
			...
		};
	};

and then this patch would modify those nodes with phandles.
