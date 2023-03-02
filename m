Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4E3E6A7F4D
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 11:00:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbjCBJ7M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 04:59:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230365AbjCBJ6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 04:58:39 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1710E41098
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 01:57:43 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id x14so21854657vso.9
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 01:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TNvXBJNqCTvELcy4YMMxwKgPnzjCMx8BCNeCIplpo2I=;
        b=E/ly+MLKc12YJLj8/whHeGltaMLioTu4A9rrMOSx2yfju2dXB4gVtWy6hnlYvigYvk
         J9Ih9OWxFAxd+I76s6PbiZZb/yRdGxrRNWeVRvOJ44GkYiOB+is0KzQTwxHQFxwDEVgV
         XSBJWV8CTppA8bxGMmTLgmOo61irg96ItDfwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TNvXBJNqCTvELcy4YMMxwKgPnzjCMx8BCNeCIplpo2I=;
        b=xQO7xGfb5v1iM2Ync8Ac6vKH7VImZS50LnrVLl4I+dW4WyJvhBh7pjUuSU/S9yx3Bf
         FCa9gJXOZ7r5NSJ7frkDgl0xix0Lj+K9Su2+aIPCXN9ajA/u9zcgocyxyNO9n3j0m4jk
         7p518iKyw6CBlwX56rYV3mn+fjrjjccwzVW4HKVNyd8t6SiU53vtXxTPkxCu2UUzPHTK
         JNSqBMCuW+KyjadkYVpHEozYINVSZx6KEzRoPYuv67hTjbvsmOLUak9r0tSArsSZtBn2
         Sl6ogHqondFP6sLprThRt7ofdAxwm2je9gMsb1gubmBZXpkUV9Tgyh1nZR18zFw07Yuf
         PiRA==
X-Gm-Message-State: AO0yUKUiky4rCvEmFi7u0APX9/ZflinbfuRMK51B/GqySeNmG8yPt1MI
        GoBaBRuv9tKrWGGPkrJO7tK9LCr+qMFjcrp1HJ0Naw==
X-Google-Smtp-Source: AK7set8bzekPc2ZdrNfn/PLNuJzt+V+Gr/Fkoao4RegP4L/RomYjhOWNObP7CaLKGTA2+SK/R+9P1cd4Sm5pxuCGZ+A=
X-Received: by 2002:a05:6102:419f:b0:412:d91:5ef5 with SMTP id
 cd31-20020a056102419f00b004120d915ef5mr1373330vsb.0.1677751062099; Thu, 02
 Mar 2023 01:57:42 -0800 (PST)
MIME-Version: 1.0
References: <20230301095523.428461-1-angelogioacchino.delregno@collabora.com> <20230301095523.428461-12-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230301095523.428461-12-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 2 Mar 2023 17:57:31 +0800
Message-ID: <CAGXv+5E1A9ZvUX0fW2v-SQJAGi9QB6vH2cpkYPjvSHUxOt5-Kw@mail.gmail.com>
Subject: Re: [PATCH v4 11/19] arm64: dts: mediatek: mt8192-asurada: Fix
 voltage constraint for Vgpu
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 1, 2023 at 5:55=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The MT8192 SoC specifies a maximum voltage for the GPU's digital supply
> of 0.88V and the GPU OPPs are declaring a maximum voltage of 0.80V.
>
> In order to keep the GPU voltage in the safe range, change the maximum
> voltage for mt6315@7's vbuck1 to 0.80V as sending, for any mistake,
> 1.193V would be catastrophic.
>
> Fixes: 3183cb62b033 ("arm64: dts: mediatek: asurada: Add SPMI regulators"=
)
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-yu Tsai <wenst@chromium.org>
