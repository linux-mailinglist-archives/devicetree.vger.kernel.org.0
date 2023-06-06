Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D9B3724C91
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 21:09:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239472AbjFFTJW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 15:09:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239355AbjFFTJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 15:09:07 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C1730EA
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 12:06:23 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1b053fe90d8so6131585ad.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 12:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686078381; x=1688670381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MpEBxclDxh3NU7TBQUnZEms/B0yBzz3nPJ/z6rfoYcE=;
        b=aQjwmZojkAk6rFlaP3vGRQt61e3TV+UAUgeMWkOd4QZijcsTd5LmB6gUL36fqR65sq
         diJo6RH3kTWT08GkOfNozJkWvpCgnwvZ2+5nbVGNVkRPBBame+vXAJ17J5RSulbc7ZHR
         SLbj42qCxS/KSYD328te6WBLoeV596mB1Hf/pcDq+cwOPfNXw/X27iatY9sfkUXMiFwY
         rjF+plpwaOieTMKNsLk4QnxtDJhVREyufikxyBZqzynjoWp+iYSZrqzcG306/WN1u1if
         Jow68cdgnapekshLnUX9Jm/7X38PbWplJosewactlBfcCAFUFzxoe/F1dHFjWAQfWqBT
         awfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686078381; x=1688670381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MpEBxclDxh3NU7TBQUnZEms/B0yBzz3nPJ/z6rfoYcE=;
        b=OxaXdr1cKbUGMmP6JNo879nrHJ9BpUbZlcBoHS33p98YNbxojmjqhVz03vfiWwIuqj
         HxNgf5rkxYaCvwGymi7uZLD+VjApgLNHRfqGmBuzepZsR9/7g6jvo97a+tgW6yP4/ugP
         gwgDPT0NB/ueCMp+Mghd+kIJz7QJ6f7z3jtihpbYky4L6gIVnJuw/FReQkfQbjVExXp9
         +cnh0RDeTUR6EYwywVvMMqdEc5U8BzKvmgUfmKhKTDKpmAOc27khGeeJUpxLc2jOLuhn
         /mv4SGv4ZNwH3IVcycH3sC0iVhlm778U+ZnejojZ5c0aXV4yqX8ysVh6USF0lASCNaxK
         WnUA==
X-Gm-Message-State: AC+VfDyry5hG9HBelKUGjRpbr8eRDynqHhEqmhDYo+W19U69ZxlyGOy0
        FoFo0/jf1QoPPOWaOyXTMIzVa2PFmWO7MXkjgng=
X-Google-Smtp-Source: ACHHUZ7TfUrlIqnBe+cWqDpmYULgf4Ze7De6q7rSkX7XcHoJCrIXqdzPmY6fdVlugJt7WY+hfIH/9arLYR/vV+VW1u4=
X-Received: by 2002:a17:902:e845:b0:1ad:e3a8:3c4 with SMTP id
 t5-20020a170902e84500b001ade3a803c4mr3251175plg.4.1686078381588; Tue, 06 Jun
 2023 12:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 6 Jun 2023 16:06:10 -0300
Message-ID: <CAOMZO5CreRv2DhDN+xac=R7Z_C3F-mh7j5BC2nzxNyHb3iaxuA@mail.gmail.com>
Subject: Re: [PATCH 0/3] imx8mq DT fixes
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

On Tue, Jun 6, 2023 at 12:09=E2=80=AFPM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi,
>
> this series fixes various dtbs_check warnings for imx8mq.
> Admittedly I do not know why lcdif is currently usable without apb and ax=
i
> clocks configured.
>
> Best regards,
> Alexander
>
> Alexander Stein (3):
>   arm64: dts: imx8mq: Fix lcdif compatible
>   arm64: dts: imx8mq: Fix lcdif clocks
>   arm64: dts: imx8mq: Add missing pci property

Reviewed-by: Fabio Estevam <festevam@gmail.com>
