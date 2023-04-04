Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F3E46D6E5A
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 22:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236300AbjDDUsl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 16:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232313AbjDDUsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 16:48:40 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55A75AC
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 13:48:39 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id f22so28378681plr.0
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 13:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680641319; x=1683233319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxbFfDCpO2IMPT7AUwlpLOXzuwW6+qDOa/oi9DPnuZQ=;
        b=abr3zEYWzLrt8/3wGBGEIgg5no+nOBlStn4Iu7/Ou4dy6yar2VNyjr+kmkMGPFRLpp
         s8FK5a4t9pEDsxK8iB5Gr4xbhJEizzPQAGxEj4pRuxSQrmk6A/tPmDrJwfMQ7MN/NP3j
         n4mGB+wMTZOA0MrJxZXMXTnhyZuUAvkYwT0FtSfpOWIJUDfAgAPvVciQ4mC8Sn4FL+8Y
         MDWdVkRwNw9gbchZSo8LVXk+Wiv7Hzz6/oG+7l23ylKMPet9i1bAvVyTZ3lcm2KyhiHG
         y8tZBTU1NRPgbyuuAxtGAj2DdGtlS0OIU1Do0/9V/u3sZzWFJmEt2E/7UZnaQEZTNFGU
         628w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680641319; x=1683233319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xxbFfDCpO2IMPT7AUwlpLOXzuwW6+qDOa/oi9DPnuZQ=;
        b=5tFS2RtuxqvtWUNus4p2/8er7Xb2VPooIVlAYwK36hqvJk0CHmuEDmJ0mz+zI3ljhf
         n6nSDTUh1i8zT8gX5n0JmZgeJfl9lR7/dtrdXVVO//re/smFUMEGy2UhZGwL41uCE5JU
         lPz/kmAz6nStXt0zLCCUh8UqjP2mvXeBR9NRzo13RRt0Yv6H79NI8uMmPel2xQAO4IVN
         ZMX3DyEV2D82FkZ8UDij0fz1Y7ISJh7sjbQrLBZoF6GDW+8UMjJtKROyhjoLjR1Af+si
         eodjh7oamLoSmQIqALuGf39q2FTRXIWxwacbPBouxLzQ3ghYWml08etnzBL62ziDcHWT
         RJMw==
X-Gm-Message-State: AAQBX9fs5UPZodA7kxsUPcxrSujzwkjhllTTz+mhPplp8y359WuHmyqL
        MEOP3u/nRpH+rCnKQSS1xEDLfTHvMpDce5mIcIg=
X-Google-Smtp-Source: AKy350bv6Db1lkA+HTcUF60YwPVOQHWT9d5E4L/hyGtrGq/PSwkFRD34hVIk1vqL0o+2PHEMMiQLb3CS8C2vc/ENpgI=
X-Received: by 2002:a17:902:ba94:b0:1a0:48ff:5388 with SMTP id
 k20-20020a170902ba9400b001a048ff5388mr1583282pls.6.1680641318670; Tue, 04 Apr
 2023 13:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230404000151.534530-1-marex@denx.de>
In-Reply-To: <20230404000151.534530-1-marex@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 4 Apr 2023 17:48:25 -0300
Message-ID: <CAOMZO5Ce027DcpYyhNznQqCnjJFPHYvosX=p1Cu-6c5uHb=csg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Add display pipeline components
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 3, 2023 at 9:02=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Mini.
> This makes the DSI display pipeline available on this SoC.
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
