Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0684748115A
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 10:41:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235116AbhL2Jlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 04:41:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235172AbhL2Jlm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 04:41:42 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F4175C061401
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 01:41:41 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id f5so84073767edq.6
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 01:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=mime-version:content-transfer-encoding:date:message-id:to:cc
         :subject:from:references:in-reply-to;
        bh=Aj1rRnkJlX5PZQvEeQVYGZh36fhTEeGXkhksn4s+SG8=;
        b=MwnCUL4SXzrP2ok/wDjVbdrnxnxNl40koBQLfsXjI08fNv68pUtxYokxTEiJx4TFFv
         MeiwFaggUyMBssrfjMwYXr1AIrj07Ynm+8hkGrmyn1iYGrBECnrcEyXwTgnD3mw4Aw/g
         W1KHfOnm6KL2dnbhXi/7JN2HfDkSs6jW26SZu0RBW8WbhDG7Bg8WlIeB13zDVrHxdsXZ
         LhBFaeXN8FodYAmR1vJmwXhMFsIlEVGHLujz3AaOTdlvrIxwzABJtTNLsrQrjGOKEZbN
         pRXDL/fMHdKH1QZ8QFPh0k94o/+ZJp8aL11MChzE5krsj1IWemrEIEeU5NtO0xS2y74N
         ikRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:content-transfer-encoding:date
         :message-id:to:cc:subject:from:references:in-reply-to;
        bh=Aj1rRnkJlX5PZQvEeQVYGZh36fhTEeGXkhksn4s+SG8=;
        b=gDCPDzZBhs+6VOFAY69M3Iaierl6swcrcL7OkqDpPLHD7d3CVYNDB5Ma6KBQ6cqlMv
         YnlCAIL2uh8g+qLurqNv/g7SJqgFnt9JqGTKer1KPxbHt9Ji9phSmZ3jcV0hM2DDebaJ
         TELsJg1OE2r7wmIWPcnfcCVSiTNF4h3WcTSpGO+VgyT055KumiS6J3gFQgOPafz9OWeX
         5XuxxXVbR7wu2sLnJyYXRrYfxXPVkckvcJM+ILj0yWbUAWz+/unRwkSNVf+9MKp2u7Fb
         4dCYDfmwehZvv8jBD5oCOzX2uREV7SPNjEThbz/mYItZvxbDB03NM9jYCXMVO8iELE0J
         xZ3A==
X-Gm-Message-State: AOAM5331k6fYEY+7bOL553eKd+5OIwkOtEokt+mvrmGhAAyntfgAzFgQ
        j9ldQXYKzEQnYQG5FW2GTeJc+g==
X-Google-Smtp-Source: ABdhPJw2ocBJCOx8c6i9/xnIlMjzPZLb/IdcMok1vKAb0FPnSUTIVUnVfGAdO4x1RdPenCA75eaq3Q==
X-Received: by 2002:a05:6402:424f:: with SMTP id g15mr25216964edb.316.1640770900560;
        Wed, 29 Dec 2021 01:41:40 -0800 (PST)
Received: from localhost ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
        by smtp.gmail.com with ESMTPSA id z10sm767768edb.45.2021.12.29.01.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Dec 2021 01:41:40 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 29 Dec 2021 10:41:39 +0100
Message-Id: <CGROQPIOKGRH.2UVREF2IWAOIC@otso>
To:     "Maulik Shah" <quic_mkshah@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>
Cc:     <~postmarketos/upstreaming@lists.sr.ht>,
        <phone-devel@vger.kernel.org>, "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <bjorn.andersson@linaro.org>,
        "Thomas Gleixner" <tglx@linutronix.de>,
        "Marc Zyngier" <maz@kernel.org>,
        "Rob Herring" <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: qcom,pdc: convert to YAML
From:   "Luca Weiss" <luca.weiss@fairphone.com>
References: <20211213152208.290923-1-luca.weiss@fairphone.com>
 <39d259cf-5663-5073-f16b-71a21f0e62e3@quicinc.com>
In-Reply-To: <39d259cf-5663-5073-f16b-71a21f0e62e3@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maulik,

On Mon Dec 20, 2021 at 1:24 PM CET, Maulik Shah wrote:
> Hi Luca,
>
> On 12/13/2021 8:52 PM, Luca Weiss wrote:
> > Convert the PDC interrupt controller bindings to YAML.
> >
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > This patch depends on the following patch, which fixed sm8250 & sm8350
> > compatibles and adds sm6350.
> > https://lore.kernel.org/linux-arm-msm/20211213082614.22651-4-luca.weiss=
@fairphone.com/
> >
> > Also, if somebody has a better suggestion for the register names,
> > the second one is pulled from downstream commit message which calls it
> > both "SPI config registers" and "interface registers":
> > https://source.codeaurora.org/quic/la/kernel/msm-4.19/commit/?id=3Dcdef=
b63745e051a5bcf69663ac9d084d7da1eeec
>
> Thanks for the patch. Please use "apss-shared-spi-cfg" name for the
> second reg.
>
> It was intended in [1] to remove it since there are no user in upstream
> for second reg. but it should be fine to convert existing to yaml first
> and then look to fix that.
>

Do you have a full-text version of that? I'd use it instead of this in
the binding.

  - description: PDC interface register region

"apss-shared-spi-cfg" sounds more appropriate for reg-names property
that I don't plan on adding.

Regards
Luca

> [1]
> https://patchwork.kernel.org/project/linux-arm-msm/list/?series=3D449725&=
state=3D%2A&archive=3Dboth
>
> [2]
> https://patchwork.kernel.org/project/linux-arm-msm/patch/1616409015-27682=
-1-git-send-email-mkshah@codeaurora.org/
>
> Thanks,
> Maulik
> >
> >   .../interrupt-controller/qcom,pdc.txt         | 77 -----------------
> >   .../interrupt-controller/qcom,pdc.yaml        | 86 ++++++++++++++++++=
+
> >   2 files changed, 86 insertions(+), 77 deletions(-)
> >   delete mode 100644 Documentation/devicetree/bindings/interrupt-contro=
ller/qcom,pdc.txt
> >   create mode 100644 Documentation/devicetree/bindings/interrupt-contro=
ller/qcom,pdc.yaml
> >

