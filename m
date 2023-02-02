Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC749687EF0
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:40:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjBBNkm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:40:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232544AbjBBNkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:40:21 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77ADE8E493
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:39:53 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id bk15so5982721ejb.9
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOv+O6zRmUrFD0uKzmPzZGG2FDBXrF4XdsrfBoPTGUc=;
        b=vUMM47jh0Hn9jMq8XlmIzznROp5tNj9M3E20EBCXzDNdfg9tpxaCSxZyaoYuXBhwNd
         mUawpVXDLMf2rtZ6Nr3J34EhpCLC3K0I9qqmpz7gkVwEAOB0baBD9jyPCy+hDJUuVYsl
         BEQGLxmZjhJs/v725olxhp1yKzQI552zwBnwwDxeYoRb4OxcFBR+VuMyBfL7mW9CRflE
         grbBMYas0CAfDkpNJVd8DEjsRXBhgTSuBsnlWHGMhIa+nzJv0VFiHm3e+aHaUruapgGe
         pcobfm23HQtYahng4IIdF/kSh+YPSvCbacEf7gS1jys91UhfHT22/iC2m0BEZJ699hWw
         mTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nOv+O6zRmUrFD0uKzmPzZGG2FDBXrF4XdsrfBoPTGUc=;
        b=COCvAHrTha6rLIIcAs38wRHyAus8S1+pqqY7WasBEp5jVA4li0k42D4B9TjWiXSwTC
         jqx5v/LFzybvmN3RpIMBjlKlOiDkJKLwro5VAaCPo75F1dvIvYR5181GOO72BQAWOYLk
         bznn/5G3ZQGkDrut/QhROorjmJjd9gZURCCa0utvszeIxDboH75vMDhA0NYgnUu/6/1D
         9SHTyW3UgrlWtnxZcQAFehNfbMWVjqsy5zQOwAimwCrADtCkHxlExiBWNtsmwJTbhT+Y
         hzu4QWizP2m3/Oa5b1jm/cxGxE2QirKgF2ndSA//VByf6MLX0ixDL4B2530Gh1iJROsX
         bLLg==
X-Gm-Message-State: AO0yUKWEX/xzq+TtlEu3CYuiC6o7Hr3PoinObgfLmHZYykqIr4cfrItF
        1GzMNMtUsX+TkSwSZxxPfkM9cg==
X-Google-Smtp-Source: AK7set/ZxyMyyz9Bp5PIVV1qOJD6NYAU1bwFe+AQzAg2Sq4F7skPhJ6Yj0Rjrcdg9Z/iWxC6+aI05A==
X-Received: by 2002:a17:907:3f9b:b0:7b2:757a:1411 with SMTP id hr27-20020a1709073f9b00b007b2757a1411mr2338440ejc.9.1675345189464;
        Thu, 02 Feb 2023 05:39:49 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id g10-20020a1709061c8a00b0088c224bf5b5sm4302204ejh.148.2023.02.02.05.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 05:39:49 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 02 Feb 2023 14:39:48 +0100
Message-Id: <CQ84AYQ4TTU1.JLLJCL8OFCFQ@otso>
Cc:     "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <andersson@kernel.org>,
        "Konrad Dybcio" <konrad.dybcio@linaro.org>,
        "Kishon Vijay Abraham I" <kishon@kernel.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        <~postmarketos/upstreaming@lists.sr.ht>,
        <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        "Johan Hovold" <johan+linaro@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/3] Add USB/DP combo PHY config for SM6350
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Vinod Koul" <vkoul@kernel.org>
X-Mailer: aerc 0.14.0
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
 <Y9u4cAK+uKXuu+uL@matsya>
In-Reply-To: <Y9u4cAK+uKXuu+uL@matsya>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu Feb 2, 2023 at 2:19 PM CET, Vinod Koul wrote:
> On 23-01-23, 14:29, Luca Weiss wrote:
> > While this patchset started out as just adding a dedicated init sequenc=
e
> > for SM6350 since USB PHY init didn't work in some cases, now it's also
> > migrating the phy config and dts over to a new format.
> >=20
> > Also note, that the DP portions are pratically untested since TCPM
> > (type-C port manager) and possibly other components aren't brought up
> > yet.
>
> Applied 1-2, thanks

Thanks!

>
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>
> cover doesnt need sob :)

That comes from b4 ;)
https://b4.docs.kernel.org/

>
> > ---
> > Changes in v4:
> > - Fix dp_serdes offsets in driver, add dp_txa & dp_txb fields (as in v2=
)
> > - Fix order of resets in dtsi
> > - Link to v3: https://lore.kernel.org/r/20221130081430.67831-1-luca.wei=
ss@fairphone.com
> >=20
> > ---
> > Luca Weiss (3):
> >       dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
> >       phy: qcom-qmp-combo: Add config for SM6350
> >       arm64: dts: qcom: sm6350: Use specific qmpphy compatible
> >=20
> >  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
> >  arch/arm64/boot/dts/qcom/sm6350.dtsi               |  54 +++-----
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 139 +++++++++++++=
+++++++-
> >  3 files changed, 154 insertions(+), 40 deletions(-)
> > ---
> > base-commit: d514392f17fd4d386cfadde7f849d97db4ca1fb0
> > change-id: 20230120-sm6350-usbphy-87c5e3f0218e
> >=20
> > Best regards,
> > --=20
> > Luca Weiss <luca.weiss@fairphone.com>
>
> --=20
> ~Vinod

