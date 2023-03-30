Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 858EA6D088E
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 16:44:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232094AbjC3OoB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 10:44:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232103AbjC3OoA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 10:44:00 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4B97DB2
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 07:43:55 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id p15so23737479ybl.9
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 07:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1680187434; x=1682779434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AXYl+xj0Yw1bF4w8+SBVfRxZF4xXz6R1uvpK88nJQC8=;
        b=ONzip9KPUdUvbBZsRUcyOv+Hoc1GuB2htGz4prOHePVA4AkkStSVSsV5EPy9vm5d5D
         BeTWohzlN54Q29xjEGX2MBvFlr4QiSujOs2RNptq76oU7NKnwQRteEbGEILq5YmWP36z
         9hWGaJoTP1uLzNK0da+XNG5kVkGzlbjkMV78+RwBASRcgk9Uvyp/M+BvEiBOAzRb+uAR
         a0WcGCIzi1F8FhuyjG7U+6cAlO/Lspp4cAJLJv7sxL5+HZ4LggrJs2wEf+l49AA4k+9J
         gx5ASTnxueEWbw/LgYUy5vykP+IhipJZum/rHVc63lktiFY2vz/yemMaQpnpgTrtU9Uq
         GBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680187434; x=1682779434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AXYl+xj0Yw1bF4w8+SBVfRxZF4xXz6R1uvpK88nJQC8=;
        b=dSio5+hq2lmj7G+MxW+5tOw2Hianzl7vltlwY0l3Lj5PyK1cZC6cJV8Fgj9EVDSNq5
         et+sefhVOcO8tS7JomnQhCu/AvMUds+EhLVpTs1iff0JyRUJMT0ZTb/lxHf6p6MDR6rU
         qB3P0AI9rVtPPx+5n2DgX3dizx3HXAP3RHYm3mbpqmAmy5iu1XNkRFA16aZp7eFyO/QE
         aEU5nIaBLBT56W3kgA0P5CMxyYlsP0hIVBA5GC26mPMTOC6UfMr9PmXlHPiSWQY4sx3z
         O77gYlQX8qE7WaGuY0oK5wQRYD612JEe6dPOZn3dpVB4ngbSHJuXOcdeM7q13/fqMCtW
         hwug==
X-Gm-Message-State: AAQBX9ezekLJ/6qDIw9LsHiGwtOzks4DJBXkOKxp1U5ezyewvlXJ82yW
        zkhzZ3ikVXSZnw9+5UP+8b46o1zfK00eACLUs4QkEMV3H+Ertv2EUlDHvw==
X-Google-Smtp-Source: AKy350ZWvrt6LF6hQ0/UwUdP4t82nxFBl3kjZRX6glA7bowsDEsbwUIYdKR6Nwdm5IH/wO4Zzsg8GC5JUryW+xqMSAc=
X-Received: by 2002:a25:db43:0:b0:b7d:5a67:8c6e with SMTP id
 g64-20020a25db43000000b00b7d5a678c6emr6807042ybf.6.1680187434135; Thu, 30 Mar
 2023 07:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680160851.git.jk@codeconstruct.com.au>
In-Reply-To: <cover.1680160851.git.jk@codeconstruct.com.au>
From:   Jack Chen <zenghuchen@google.com>
Date:   Thu, 30 Mar 2023 10:43:43 -0400
Message-ID: <CALvyBcV9EnwgcuNXF=uUwdQZ=WHjmpinD=s0FkL=KC0OBTwXBA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c controller
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-15.7 required=5.0 tests=DKIMWL_WL_MED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,ENV_AND_HDR_SPF_MATCH,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jeremy,
Thanks for the change, especially IBI features in other threads.
From my understanding, ASPEED AST2600 is a SoC which uses Synopsys'
I3C IP core, and several different registers, especially the pull-up
resistor.
If so, I am wondering if this is the right place to add
ast2600-i3c-master.c, given that all current three xxx-i3c-master.c
drivers in this directory are from IP providers directly.
What about moving it under ~/driver/soc/?
Thanks
Zenghu Chen

On Thu, Mar 30, 2023 at 3:22=E2=80=AFAM Jeremy Kerr <jk@codeconstruct.com.a=
u> wrote:
>
> This series adds a new i3c controller driver, for the ASPEED AST2600 13c
> SoC peripheral. This device is very similar to the dw i3c controller, so
> we implement this by adding a little platform abstraction to the dw
> driver, and then a platform implementation for ast2600.
>
> v2: This is a rework from an earlier series that implemented this as
> part of the dw driver; I have adopted Ben Dooks' suggestion to split
> into a new driver + exported hooks from the dw base.
>
> As always: comments, queries etc. are most welcome.
>
> Cheers,
>
>
> Jeremy
>
> Jeremy Kerr (3):
>   i3c: dw: Add infrastructure for platform-specific implementations
>   dt-bindings: i3c: Add AST2600 i3c controller
>   i3c: ast2600: Add AST2600 platform-specific driver
>
>  .../bindings/i3c/aspeed,ast2600-i3c.yaml      |  72 ++++++++
>  MAINTAINERS                                   |   6 +
>  drivers/i3c/master/Kconfig                    |  14 ++
>  drivers/i3c/master/Makefile                   |   1 +
>  drivers/i3c/master/ast2600-i3c-master.c       | 169 ++++++++++++++++++
>  drivers/i3c/master/dw-i3c-master.c            |  76 ++++----
>  drivers/i3c/master/dw-i3c-master.h            |  55 ++++++
>  7 files changed, 360 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-=
i3c.yaml
>  create mode 100644 drivers/i3c/master/ast2600-i3c-master.c
>  create mode 100644 drivers/i3c/master/dw-i3c-master.h
>
> --
> 2.39.2
>
