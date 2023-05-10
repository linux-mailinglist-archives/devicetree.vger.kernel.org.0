Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 624BB6FD7E4
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 09:11:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236437AbjEJHLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 03:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236324AbjEJHLb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 03:11:31 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5BF3A9A
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:11:29 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-434a819c880so1284473137.3
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683702689; x=1686294689;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7DKY1LvQg2kXZg4Zzx0fz4bxRDCh3YNmPlm8DK4I8Rs=;
        b=D67yxjwK3XvsS+0FUSSdPDPqTLnR4xUUggb6qAnZdZ/ufZvDUwGsPYRzdPmJZedqvc
         hCIdznBDRT4OGZSNCYdF/HyEvcWuTFl0lp3hiDGgMlVEm1Ma7gz/WsIoq7nbdi+yWKP1
         Nbe0eqiFq/f3g9pgCNw3/AyO6QvuSoBe5LQ02GkpanTwthzpuXDOFsDjPm3gKgHcXKND
         M0Vu762+Zyc1KH8yvSSaccccx1x2VeKbK4f9QnunWiJNQGvqcJiNAi8+RSV3WZQa0pwr
         FWSfY3dCT1JotuGKjDll3Tl818l1q7GhR4l59gnvG23z/9Pp945W6eQqnrIl+8NRSG9c
         agoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683702689; x=1686294689;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7DKY1LvQg2kXZg4Zzx0fz4bxRDCh3YNmPlm8DK4I8Rs=;
        b=OQCHyFu3FiMicHw9+cs9s7zXwbnXUY+f380T6x93bw5EOt44dNU7fSp0qMFhoT06eq
         ZMjlANWKLR1W6tCwQhZeqi15uKD28ADmHQghCLwnQbZ/3UJjf9q34NUgim0GWgzDlpsN
         YZOWXG7ULjbz3SKuKXCaJksDobajoAUi5ektC/NswdXyvUrfw1XTE7+QnKcvaIFO4XEI
         LEbEXyKHASru096hoyOAhq+HEgYeR29fuDWeBxF5kXpn8DsEtjWUy79jEb46Wx5OMouq
         l5yfEFYWY4BtcsqEaIgBmfX/uPmac6jOQlxFrIWQuASYd8KEdnmFEVTxqedXhrEfP1S6
         z5Fg==
X-Gm-Message-State: AC+VfDxzlAzNK17jsy3XyCK5ZScwl4bH441AURtdUEX+YHbe4NDLYSER
        LwJ91KPdSQLfhyBeaFwSxryJA4lO3n8MWHmLdteFP7bJrfc=
X-Google-Smtp-Source: ACHHUZ5/9ahZ3/93Fzez+U+Zt6l9htG4rBiTxKsFtiIrpjJc6ith4qmKgso2bPTkJHxHoBDETe7YWlklM2OdaUrFWxE=
X-Received: by 2002:a05:6102:3cd:b0:430:ce0:ae90 with SMTP id
 n13-20020a05610203cd00b004300ce0ae90mr4967724vsq.14.1683702688833; Wed, 10
 May 2023 00:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <20221003073443.1511266-1-paweldembicki@gmail.com> <Y4ahUWz0z8nBRWCN@lunn.ch>
In-Reply-To: <Y4ahUWz0z8nBRWCN@lunn.ch>
From:   =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date:   Wed, 10 May 2023 09:11:17 +0200
Message-ID: <CAJN1Kkzv2Q76RR5VkV7kU=i13eq_h3ksN5Ob=SF3eVi6MHveYQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>
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

=C5=9Br., 30 lis 2022 o 01:18 Andrew Lunn <andrew@lunn.ch> napisa=C5=82(a):
>
> On Mon, Oct 03, 2022 at 09:34:43AM +0200, Pawel Dembicki wrote:
> > Add Endian 4i Edge 200 is 5-port firewall.
> > It have also clone: Endian UTM Mini (The same hardware, with added WLAN
> > card).
> >
> > Hardware:
> >   - SoC: Marvell 88F6281-A1 ARMv5TE Processor 1.2GHz
> >   - Ram: 512MB (4x Nanya NT5TU128M8GE-AC)
> >   - NAND Flash: 512MB (Micron 29F4G08AAC)
> >   - Lan 1-4: 4x GBE (Marvell 88E6171R-TFJ2)
> >   - Lan 5: 1x GBE (Marvell 88E1116R-NNC1)
> >   - Storage: MicroSD Slot
> >   - MCPIE: MiniPCIe Slot present [fitted with SparkLan WPEA-110N/E
> >           (Atheros AR9280 chipset) in Endian UTM Mini WLAN only]
> >   - USB: 1x USB 2.0 port
> >   - Console: RJ-45 port
> >   - LEDs: 3x GPIO controlled
> >
> > Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

Hi all,

Gentle reminder for this patch.

Best Regards,
Pawe=C5=82 Dembicki
