Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D3766D0DD2
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 20:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbjC3SgF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 14:36:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbjC3SgF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 14:36:05 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE9F5E050
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 11:35:59 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5416698e889so371272377b3.2
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 11:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680201358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1mfsAVkmxLwhRt7IlI3jhuOesEA4D6U7D/dfayN2QA=;
        b=i3dDFAZGt2ZPjNlP60Z4dUpIzuhxBu8puRTDl02gez4hWTzqUwaWxyZJdY6CK6ao2i
         /DYT45kszQGM8Wta0pdgChvp8e/21VBkc2gyUKzkk5AELRE7gH7nLFFXHNkM/0eprKi4
         s1N0Nq+yOSKmLMNjD6RoaPbZTeRXhou6nDyd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680201358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1mfsAVkmxLwhRt7IlI3jhuOesEA4D6U7D/dfayN2QA=;
        b=0ZxlXnxInR6YArjcQNwpcTQ23BktQwPgC6J0B0VwBDQ7/pksU9VxWyTf147943Ujdn
         Im4rGpMOHulO36IT2QjIf5orRWr8xuAnpxv5G/r+enmWDF2KOGPSyy95UpH3H/Tr6h7Q
         eHCva+3vaFhJf31ZSgESs0ztdOnLvUONbzKtoXW33rMhDHlgf848C27y3mAUBnNoh1Lx
         stsOR9jILEV5t1alNPGJj5LLo6cUR4s4tjctUuOb5yqAl2eTlcw8GqaW2UaHeIWYd1PY
         t6I8vMf6016TaUJqrQN1itYlFzbtmXARJTQ/3ElpUn3FnHL4rIHEVX+EPoNWhs3I9UAC
         xTOA==
X-Gm-Message-State: AAQBX9csYQZOGonAtgrgi6rB8MXZkHfuOp0EhXpikyTt0yWC1PvD/kEJ
        4aF+tSxxLqaVKie3KsO4fOrUgqkM/2EKutWrT3E=
X-Google-Smtp-Source: AKy350Y/08hWpXUvhgAnfcEwo5tfT68bvqr4cBV6sP4tqDoaWC5DhYgWjkbSoU8k6mE2mzElGYMDDg==
X-Received: by 2002:a81:9e08:0:b0:541:8920:ce1c with SMTP id m8-20020a819e08000000b005418920ce1cmr24945013ywj.5.1680201358612;
        Thu, 30 Mar 2023 11:35:58 -0700 (PDT)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com. [209.85.128.174])
        by smtp.gmail.com with ESMTPSA id m23-20020a81ae17000000b00545a0818475sm26204ywh.5.2023.03.30.11.35.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 11:35:58 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-54601d90118so215332697b3.12
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 11:35:58 -0700 (PDT)
X-Received: by 2002:a67:d493:0:b0:426:a319:a226 with SMTP id
 g19-20020a67d493000000b00426a319a226mr9101769vsj.7.1680200976855; Thu, 30 Mar
 2023 11:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230324195555.3921170-1-markyacoub@google.com> <20230324195555.3921170-9-markyacoub@google.com>
In-Reply-To: <20230324195555.3921170-9-markyacoub@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Mar 2023 11:29:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wq8Z+rf++08fyYvsBUqdWX23qoUSOBBR5nP=hBUk2mzA@mail.gmail.com>
Message-ID: <CAD=FV=Wq8Z+rf++08fyYvsBUqdWX23qoUSOBBR5nP=hBUk2mzA@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] dt-bindings: msm/dp: Add bindings for HDCP registers
To:     Mark Yacoub <markyacoub@chromium.org>
Cc:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, seanpaul@chromium.org,
        suraj.kandpal@intel.com, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Mar 24, 2023 at 12:56=E2=80=AFPM Mark Yacoub <markyacoub@chromium.o=
rg> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Add the bindings for the MSM DisplayPort HDCP registers
> which are required to write the HDCP key into the display controller as
> well as the registers to enable HDCP authentication/key
> exchange/encryption.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
>
> ---
> Changes in v2:
> -Drop register range names (Stephen)
> -Fix yaml errors (Rob)
> Changes in v3:
> -Add new compatible string for dp-hdcp
> -Add descriptions to reg
> -Add minItems/maxItems to reg
> -Make reg depend on the new hdcp compatible string
> Changes in v4:
> -Rebase on Bjorn's multi-dp patchset
> Changes in v4.5:
> -Remove maxItems from reg (Rob)
> -Remove leading zeros in example (Rob)
> Changes in v5:
> -None
> Changes in v6:
> -Rebased: modify minItems instead of adding it as new line.
> Changes in v7:
> -Revert the change to minItems
> -Added the maxItems to Reg
>
>  .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
