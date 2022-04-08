Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75E7B4F93EC
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 13:25:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234385AbiDHL1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 07:27:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234797AbiDHL0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 07:26:52 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8A8C393D2
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 04:24:46 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id qh7so16600545ejb.11
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 04:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=mime-version:content-transfer-encoding:date:message-id:cc:subject
         :from:to:references:in-reply-to;
        bh=JB/CC7Ec3Hb4OFGT9SZA55npXZ1ZkvCNi/Sf1qgDY2g=;
        b=EGJkYNDtG1rZUMJh9xXvZEpBljzhh7xVHW+qntSTHQ47vn8Gfqgnz7rO2M7nglYh+O
         buNGI+A1uRjTH+HU4p3mJW4bmSa0whlUFjXAa7BawVguWDsmo0wpl9KA3ONSArzPWqOF
         OESxAPTmt9r5/kWVksICuU9X97GoyPdZNxUHhQ7AM5rxjEI3wZPq1GfxgvyRuL5AV1gz
         ijuPrbd583+AFbFzQPY+Eb7IVwk24g6fzUTNzsduEep6aJ8J46hExo7YFhnss713ATm0
         ItwzcarpZrcdTRiSxxE2B2QyMvAzQCX7cu4U2ocU2g8sxKGSkvxZi+NAkHCyKVDwuZN9
         1kLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:content-transfer-encoding:date
         :message-id:cc:subject:from:to:references:in-reply-to;
        bh=JB/CC7Ec3Hb4OFGT9SZA55npXZ1ZkvCNi/Sf1qgDY2g=;
        b=EXsslep23RYZt0mUs9YkYa4S4nkbouN2v02N/X+uLDL13C1pk/tVjTzQOBHUL0BY54
         d6kEea6A7VNDQqHRQHUSCLD8wv+L7IssvI7/BnDaEVlfFv0CMx/w+FXU62vUykL5GTWA
         0uuy1GDnd2eA/WdXJ88zLDjvGOs2z5lplXZQGtUAwmiJl1RXCxgN1Hz51Q9vpu+3dHgq
         CwWKrh4HC7JIeDLkuhmDabAdsQtS6cApBVq8dgYS4YyM5ih6wG/Txz7BmCQnP786vGac
         YNucocwWrYUfDhDH7ROwNKZ/BpzdQnqvl+hoY7CocnrCE+BM1m4Ry5fwq0QdSfebEcT4
         UPkA==
X-Gm-Message-State: AOAM533CEYxvg1fLvyXjIoyrOtlpx80y7cRscP93VQIJM2KNaZ8IJ1xj
        8qTFhrmH5c5s1dFB8Iyv+T0WaFxfBIUMwA==
X-Google-Smtp-Source: ABdhPJwKD0stjojj0JVqzk62Y5+rYQTTyLyP+wiunWy0fhaUgzh773Ul0MPHiF6T1xTfAVXlqMFVyg==
X-Received: by 2002:a17:907:7d9e:b0:6df:9fe8:856a with SMTP id oz30-20020a1709077d9e00b006df9fe8856amr17667048ejc.373.1649417085194;
        Fri, 08 Apr 2022 04:24:45 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id p14-20020a05640210ce00b00413211746d4sm10343381edu.51.2022.04.08.04.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 04:24:44 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Fri, 08 Apr 2022 13:24:43 +0200
Message-Id: <CJ4TK3GWP00Q.1SDG6H9Q4GP37@otso>
Cc:     <~postmarketos/upstreaming@lists.sr.ht>,
        <linux-kernel@vger.kernel.org>, "Rob Herring" <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        "Thomas Gleixner" <tglx@linutronix.de>,
        <linux-arm-msm@vger.kernel.org>,
        "Bjorn Andersson" <bjorn.andersson@linaro.org>,
        "Andy Gross" <agross@kernel.org>, "Marc Zyngier" <maz@kernel.org>,
        <phone-devel@vger.kernel.org>
Subject: Re: [PATCH 03/10] dt-bindings: qcom,pdc: Add SM6350 compatible
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Rob Herring" <robh@kernel.org>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
 <20211213082614.22651-4-luca.weiss@fairphone.com>
 <YbpLnWKRq5TRO+Uk@robh.at.kernel.org>
In-Reply-To: <YbpLnWKRq5TRO+Uk@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

On Wed Dec 15, 2021 at 9:10 PM CET, Rob Herring wrote:
> On Mon, 13 Dec 2021 09:26:04 +0100, Luca Weiss wrote:
> > Add devicetree compatible for pdc on SM6350 SoC.
> >=20
> > Also correct the compatibles for sm8250 and sm8350.
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > I do have the .txt -> .yaml conversion ready for this but will send
> > as a separate patch.
> >=20
> >  .../devicetree/bindings/interrupt-controller/qcom,pdc.txt    | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >=20
>
> Acked-by: Rob Herring <robh@kernel.org>

It looks like this patch hasn't been applied yet. Could the responsible
maintainer please pick it up?

Regards
Luca
