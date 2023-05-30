Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E953C71587E
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 10:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbjE3I3G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 04:29:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbjE3I3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 04:29:05 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 487129D
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 01:29:04 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-96fbc74fbf1so777191966b.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 01:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685435342; x=1688027342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rrXV2pSkwAI+QAXUpRLRnlNnNfkWLFknVTLvl7bQmX8=;
        b=hhDng4lkd1dmbVY+ER6sTHZRcOMINn4V12JPdKwY0qzlKw9QXSgTof16oGfkiEp2im
         zsnCZf3IJ6DA/9SQCB6cY9yh2Cwt0bNs41HYjfRuZKomJUpwd6EBk7fNft285Spy9+/t
         fcYWk/A3ghzCjh+vn2DrOVWj4/CaCr7iF8DTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685435342; x=1688027342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rrXV2pSkwAI+QAXUpRLRnlNnNfkWLFknVTLvl7bQmX8=;
        b=eg+n2HtRRnKzLYBqLLKg01Rw+7Iqyg3Z0+EUTZFqYNxzf3OKXQTH8OBTnzpKmJwbfP
         Mg25rBex7NDfz8Uon4y2kts1iy1nglpW9YfOAYWU5b8Cixdyh7nUSrBdNzANx9G65gmE
         LTsnYrOCcuE1ILZLR/Pczb572dVo5lVc4tSkx17fqNvJ2I+YTkz8maafHwyjn8kmvFre
         HNOC8VzU9ORD2AGzydKPmC+36lffH6ZwLsB8qyVw/OYbVWVc1/5buyXA3oq7/sIRWY9D
         nscUQ8YaOkhlue5cpqT4Fo3YanF/CxAVevprLbVL3raWAmMAjdpSxXe7VSFKm77I5Q9A
         u/1g==
X-Gm-Message-State: AC+VfDzDBkh4l81Qsj0Nll9ZvPwQHV6+BWOsBkSkR6rS1b4+6NBfH8rv
        DlQb0/ukKqzOXYC6iN+f0a3nmgFXiqG8gFDpeHo=
X-Google-Smtp-Source: ACHHUZ49m2Fl27nbo2k2+GqbX+VhFhSkkPO5WffR7jTDY5zjd67hICIF3b04PVP9nH8O27wX9fPpzg==
X-Received: by 2002:a17:906:9b93:b0:973:fa96:aff1 with SMTP id dd19-20020a1709069b9300b00973fa96aff1mr1909350ejc.35.1685435342435;
        Tue, 30 May 2023 01:29:02 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id j1-20020a1709064b4100b009664cdb3fc5sm6958642ejv.138.2023.05.30.01.29.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 01:29:01 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-3f603ff9c02so28118935e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 01:29:01 -0700 (PDT)
X-Received: by 2002:a05:600c:3787:b0:3f6:1e6:d5a2 with SMTP id
 o7-20020a05600c378700b003f601e6d5a2mr946577wmr.4.1685435341339; Tue, 30 May
 2023 01:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230518115258.14320-1-shuijing.li@mediatek.com> <0ff74fff-9e48-e2a6-617c-13d4cfc2e157@gmail.com>
In-Reply-To: <0ff74fff-9e48-e2a6-617c-13d4cfc2e157@gmail.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Tue, 30 May 2023 16:28:24 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhVrbaAh2u7rG-=-RubsxTZvMBRZO-t0NA8jG7M8187EA@mail.gmail.com>
Message-ID: <CAC=S1nhVrbaAh2u7rG-=-RubsxTZvMBRZO-t0NA8jG7M8187EA@mail.gmail.com>
Subject: Re: [PATCH v2] pwm: mtk_disp: Fix the disable flow of disp_pwm
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Shuijing Li <shuijing.li@mediatek.com>, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de,
        angelogioacchino.delregno@collabora.com,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        jitao.shi@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 29, 2023 at 6:43=E2=80=AFPM Matthias Brugger <matthias.bgg@gmai=
l.com> wrote:
>
>
>
> On 18/05/2023 13:52, Shuijing Li wrote:
> > There is a flow error in the original mtk_disp_pwm_apply() function.
> > If this function is called when the clock is disabled, there will be a
> > chance to operate the disp_pwm register, resulting in disp_pwm exceptio=
n.
> > Fix this accordingly.
> >
> > Signed-off-by: Shuijing Li <shuijing.li@mediatek.com>
>
> We are missing a fixes tag here.
> Fixes: 888a623db5d0 ("pwm: mtk-disp: Implement atomic API .apply()")
>
>
> with that:
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

Tested-by: Fei Shao <fshao@chromium.org>

>
> > ---
> > Changes in v2:
> > Use
> > if (A && B) {
> >       something();
> > }
> > instead of
> > if (A) {
> >       if (B) {
> >               something();
> >       }
> > }
> > per suggestion from the previous thread:
> > https://lore.kernel.org/lkml/20230515140346.bxeu6xewi6a446nd@pengutroni=
x.de/
> > ---
> >   drivers/pwm/pwm-mtk-disp.c | 13 +++++--------
> >   1 file changed, 5 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/pwm/pwm-mtk-disp.c b/drivers/pwm/pwm-mtk-disp.c
> > index 79e321e96f56..2401b6733241 100644
> > --- a/drivers/pwm/pwm-mtk-disp.c
> > +++ b/drivers/pwm/pwm-mtk-disp.c
> > @@ -79,14 +79,11 @@ static int mtk_disp_pwm_apply(struct pwm_chip *chip=
, struct pwm_device *pwm,
> >       if (state->polarity !=3D PWM_POLARITY_NORMAL)
> >               return -EINVAL;
> >
> > -     if (!state->enabled) {
> > -             mtk_disp_pwm_update_bits(mdp, DISP_PWM_EN, mdp->data->ena=
ble_mask,
> > -                                      0x0);
> > -
> > -             if (mdp->enabled) {
> > -                     clk_disable_unprepare(mdp->clk_mm);
> > -                     clk_disable_unprepare(mdp->clk_main);
> > -             }
> > +     if (!state->enabled && mdp->enabled) {
> > +             mtk_disp_pwm_update_bits(mdp, DISP_PWM_EN,
> > +                                      mdp->data->enable_mask, 0x0);
> > +             clk_disable_unprepare(mdp->clk_mm);
> > +             clk_disable_unprepare(mdp->clk_main);
> >
> >               mdp->enabled =3D false;
> >               return 0;
>
