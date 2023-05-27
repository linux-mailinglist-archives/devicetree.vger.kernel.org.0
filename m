Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5F4571366A
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 22:32:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbjE0UcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 16:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjE0UcS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 16:32:18 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36668A4
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:32:17 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-64f1f133c37so449294b3a.0
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685219536; x=1687811536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yYGDEhv3Q38ALRAVOJjNVfcjqY/45i845lrCxJnxtcg=;
        b=J25vzdQg32rULQ/FicLqsezbY2qXGp0nnHpRHx0L1PLi5esGK/eWMsBd+jXoSC/esh
         4KWYcZk8WYma/ImCgoSCB86ojcnO6q9Sg7pFFZJTdUipzuHjj/WjtPzUmOZeNpq4iHk3
         cfKa7E1wXcdf74QMQ5NpOD9kTR08DFICCIRfk1mbBHj4pXy0uNS12UURKdCUJm+KUEYA
         3MzUrOnQXXqK0S+ND3QmqFUi2XIhw9IvetojOkYom3Xy8tzM1b6OD4UDtJ+NL9aftjOq
         E4xUsnJblSzuiMbSN+9O7vRLSp6/t+B26fzlbJQSxkeZLTLIDwDY0pQlFsd0cUBq/Euz
         la9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685219536; x=1687811536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yYGDEhv3Q38ALRAVOJjNVfcjqY/45i845lrCxJnxtcg=;
        b=fJzOU1GzXifED+VMJO4tnGWHQz3XuQ2keDPhVASTf9DBxLEC5QKIYQTmpviiCYRoVh
         BXw3SVvRj+OM0tbxSPZqO56OnsyqqJ9ciKAg0mFN4lICQ/LDJA2FhWeppPIK1UDdjWYE
         WnFJo/BOQPMKpmYzRm15GrKuIFnoZ8ahzkUlJPVJaNoyTbv7tiPwIzAeil15aiM9v7GE
         PU7UXSO6XO9HN9yWAK8ELL7PHcfrlGxoZEvnPAwdNEAXbyNpBaUa4b0rvfbDNXYk2uH7
         nVP7I/nc9ZClXFknC8z2AxYUoChbrcYo4vBp7BSbvDqG+gNHvLIfAiemQ376osUOJvNb
         2iMA==
X-Gm-Message-State: AC+VfDxizOTVE6lBomzMcq5ITr5YiCRRN03ZJX9mRLI7gDyb2PUESDue
        LBl5uNwBKo3kBjpnxHcO29XZ5iY9oGrtq13e/4c=
X-Google-Smtp-Source: ACHHUZ6HAWfDfoJayBSqnrt9W2zPwqGaB+sEJU05QHX3re+mw5WyP266KJdhzItqmaolu9fNq/VDkeh18SYq96Wr/gw=
X-Received: by 2002:a05:6a00:1389:b0:63d:344c:f123 with SMTP id
 t9-20020a056a00138900b0063d344cf123mr7414041pfg.1.1685219536636; Sat, 27 May
 2023 13:32:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230527195005.398815-1-festevam@gmail.com> <20230527195005.398815-3-festevam@gmail.com>
 <20230527-shakily-marrow-b18e2ac3a467@spud>
In-Reply-To: <20230527-shakily-marrow-b18e2ac3a467@spud>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sat, 27 May 2023 17:32:04 -0300
Message-ID: <CAOMZO5DnEHmTPVK-B8y+z351jUKhJOruwShOXA_O6oAko_ZJLg@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: imx6ul-ccimx6ulsom: Remove unexisting PMIC supply
To:     Conor Dooley <conor@kernel.org>
Cc:     shawnguo@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor,

On Sat, May 27, 2023 at 5:12=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> Dumb question, did you spot this only because of dtbs_check, or is this
> something you know to be true?
> I had the datasheet open to check the interrupt thing, so I figured I
> may as well look for coin cell chargers too.
> Seemly there is a "licell" pin that is an input/output. Is this what the
> vcoin_chg was referring to, or is that something else entirely?
>
> I know nothing about the hardware at all, so was just something that
> piqued my curiosity.

Thanks for your review.

I have double-checked it and the correct fix is to change it from
"vcoin" to "coin".

I will send a v2 soon.

Thanks
