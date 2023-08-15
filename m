Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C38FF77D4F7
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 23:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240125AbjHOVNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 17:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240234AbjHOVNT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 17:13:19 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41692198B
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 14:13:15 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so7568513a12.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 14:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692133991; x=1692738791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQL376aYCM3mORsHenByKOm9UE97TQIxr1RFcgdCPKQ=;
        b=HAK8GG9O0/3jtFiiUynpPDzV212pGhmNxm8edooqqx/pAVg29LxGMQ4IN1wOJVDRDH
         J4iF2vhWI6iDRdiI1VrzmxURR3gKR42BFFKZlEXX+U2ZvqulAXJhlpztmEeox+MIU8+0
         x1z8/m5LOWL2MKyscFagcCs0p8Hp0o4RQEHBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692133991; x=1692738791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KQL376aYCM3mORsHenByKOm9UE97TQIxr1RFcgdCPKQ=;
        b=l8ZYyDxsV9GwsiMD8Dc2RgUbsi7VJWWsxbM+1BSG6fQkV7OK5RwfkGtPhOYnueIjMO
         rayphCxpfMApg1hjpBO9za0O6CRFwrWVg/yE4XL5rw4+kR94fkS/83ghjX9zgCi7qSwb
         VWoTVgEx1xU0g0s4e1vas8zTLujVm32W2zZShfGxyXvc7T8KHqimWMtAC0QKgZTYBISq
         oyWi+sgZAXLKQgbGtvjXZdgD+DjaXYlCHMiG0sApw0NFnUJVjydj77K9ZfQlb7sWaQPB
         3bJH3W/Gi0KK0ynGHHx9Rg8RyB1Min9TZpBSEwJEuV7jTiFj1fNfsgpB6bnQTguTEbh4
         1EyQ==
X-Gm-Message-State: AOJu0YxmfidIBMq8gU2byWRZsyoCPzDXw9ER56lYEokxBV2ArppQTzMB
        bOt8JQBY86fFMVcIhDEZ26+h7yhJfFyNN3AMwcs0fJyY
X-Google-Smtp-Source: AGHT+IH/9eGY9wEtGPEgVTMFC4JYDaEehB6UgIEM6zZrctxa6iyC13TWS8gZUo22RMvTD4w5ZLvd9Q==
X-Received: by 2002:aa7:d951:0:b0:522:3855:7ec5 with SMTP id l17-20020aa7d951000000b0052238557ec5mr28115eds.10.1692133991586;
        Tue, 15 Aug 2023 14:13:11 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id by6-20020a0564021b0600b00523d2a1626esm5861304edb.6.2023.08.15.14.13.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 14:13:10 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-3fe2a116565so8935e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 14:13:09 -0700 (PDT)
X-Received: by 2002:a05:600c:5126:b0:3fc:75d:8f85 with SMTP id
 o38-20020a05600c512600b003fc075d8f85mr36477wms.6.1692133989440; Tue, 15 Aug
 2023 14:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230809064908.193739-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230809144516.v3.3.Ie77732a87ab53d21bac47db309b75a796fa19337@changeid>
 <cd15df3a-eadc-13d6-7088-3ad785ea733e@linaro.org> <4e05a1fb-f6f2-3219-b41d-67351c70a7ff@linaro.org>
 <1dfaf72b-1e2a-e771-39f9-c3a5cf1c8463@linaro.org> <20230814094802.9127-1-sheng-liang.pan@quanta.corp-partner.google.com>
In-Reply-To: <20230814094802.9127-1-sheng-liang.pan@quanta.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 15 Aug 2023 14:12:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U1_yxPT1=ncYBdd33HSuoqSiQ8Uzt2+ETkS-Doj06azA@mail.gmail.com>
Message-ID: <CAD=FV=U1_yxPT1=ncYBdd33HSuoqSiQ8Uzt2+ETkS-Doj06azA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sc7180: Add board id for lazor/limozeen
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     krzysztof.kozlowski@linaro.org, agross@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
        konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 14, 2023 at 2:49=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> >> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> On 10/08/2023 11:30, Sheng-Liang Pan wrote:
> >>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>>
> >>>>> Isn't this duplicated with r9? Probably other places as well... or.=
...
> >>>>> separate r10 add rt5682s node which different with r9.
> >>>> we separate r10 add rt5682s which differentwith r9
> >>>>
> >>>>
> >>>>>> -        model =3D "Google Lazor Limozeen without Touchscreen (rev=
9+)";
> >>>>>> -        compatible =3D "google,lazor-sku6", "google,lazor-sku18",=
 "qcom,sc7180";
> >>>>>> +        model =3D "Google Lazor Limozeen without Touchscreen (rev=
9)";
> >>>>>> +        compatible =3D "google,lazor-rev9-sku6", "google,lazor-re=
v9-sku18", "qcom,sc7180";
> >>>>
> >>>>> Your patch 2 does not make any sense. Didn't you touch it in patch =
2?
> >>>>> Really, what is happening here?
> >>>> patch 2 explain why we added new sku for no-eSIM.
> >>>
> >>> So which commit explain why you touch the same line twice? Sorry, thi=
s
> >>> does not make sense.
> >>>
> >>> Best regards,
> >>> Krzysztof
> >>
> >> We sort patch by change order,
> >> fist request for non-eSIM, patch2 add new sku 10, 15 for non-eSIM, and=
 18, but keep the newset reversion is r9,
> >> after add non-eSIM SKU, a sencond request for ALC5682i-VS,
> >> so continue patch2 we upreversion r10 which include rt5682s node.
> >
> > I barely can parse it, but anyway does not look right. You explained
> > what you are doing but it does not explain why touching the same line
> > twice. There is no point in making one board new SKU, but then
> > immediately change it to something else. The previous commit is just no=
-op.
> >
> > Best regards,
> > Krzysztof
>
> Thanks Krzysztof.
>
> Hi Douglas,
> May I consult with you if you can accept we merge patch2 and patch3 toget=
her?

I have no objection to merging patch #2 and patch #3 into one patch if
that makes it better for Krzysztof.

-Doug
