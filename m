Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 036D8727047
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 23:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234152AbjFGVIX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 17:08:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233843AbjFGVIW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 17:08:22 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D80A1FE3
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 14:07:42 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1b0338fac5dso8579795ad.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 14:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686172062; x=1688764062;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSMvaPIb7+p3x1tW4r1lhhP/7n0kLkPnk6UjOjqU3bU=;
        b=iLjx5OarvB1xY9Tsm+WU3FPpWdwfzLb1Xy0Sce2lxImQmCu4aAbooG5gtIqlM+mCzK
         ZaaPSIEiDG83+pDTujF88PePfPbFGrbdpR5C6kGzibLvVNfh1Ji+5U7LaxALN0nfPavM
         PW0TqxdUdEt4n6XZs++JeF52hIIpgWTln2Cq0RUUKz9N34229KpVW/NsXIo/EHgoA8kJ
         2aC3eyl2sztjNRGqjNH54pOq1IRy1BALlJhNIw97FGxm8Oy6ZRks2Deg7wmlI1iNkntZ
         Q6WeIIYVChcg3bE12Yaeq058V4rb761gRc6YT4SxCXvBDm0UGjB5+TmWiwnhZ7/QrDiu
         c9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686172062; x=1688764062;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lSMvaPIb7+p3x1tW4r1lhhP/7n0kLkPnk6UjOjqU3bU=;
        b=Oqh2jT/fPsHSaRfhnldU1kxnq2EgaVe82r3vecgToBAGf+gHnFfklxtX5Dcu6GCpWM
         UmjFABJ6JvPCEF4s0ZKRz+iDno3K56zaGwxlL/tR3ZX5gl5SoD6/ttBb560b8iDAuPS+
         gRhsGgvKcs5Rzn4x9GLmmYIdNmgmufibs9zDCYnCJoPsOvwtGJOPaT+NNI7u9V7RIdPL
         6B76cw2LBaAoMZsBeLLjeFeskQhm0W2GNFG82ZqqhDqQPjQkXogX5i8g5POq12ydeKH9
         mMX23A22mgk4/F/pqC/8PQpX4fdoS0LH4+23lA6NeNeHBUyTcpqsz6ql4Uoc/c5skqye
         E3LA==
X-Gm-Message-State: AC+VfDwHUFSTloiVy7uHeu5mEO6aQK/vj1HxZEk6p7zQMjzRGWDuFluv
        xvC8+juME9ftgxgJXarwgOu+xDZyXOkuGHn6Qzc=
X-Google-Smtp-Source: ACHHUZ4vm2lz8VXGydRqWc124o0H1g70YO7kQVPDq687yJAen85q1mp1rMcxU94wfbvJBv1e0e7aqwvsE5onLZwTaXo=
X-Received: by 2002:a17:902:d482:b0:1b1:f194:ebb1 with SMTP id
 c2-20020a170902d48200b001b1f194ebb1mr7092023plg.0.1686172061746; Wed, 07 Jun
 2023 14:07:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230522201404.660242-1-festevam@gmail.com> <20230522201404.660242-3-festevam@gmail.com>
 <168479113748.3061858.13208114678317716697.robh@kernel.org>
 <CAOMZO5BAoT=Mi_Ac_qD-eu37nJkBMpF5HJ54MbrAtPakw-BZCQ@mail.gmail.com> <20230607203146.GA3970300-robh@kernel.org>
In-Reply-To: <20230607203146.GA3970300-robh@kernel.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 7 Jun 2023 18:07:30 -0300
Message-ID: <CAOMZO5D7oZUgH=-Gz3t=W94Vj8xZxyARnT73jTiHgN3B+ZbW3Q@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose Register
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, bhelgaas@google.com, marex@denx.de,
        shawnguo@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org
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

On Wed, Jun 7, 2023 at 5:31=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:

> No such commit hash nor is
> Documentation/bindings/display/bridge/fsl,ldb.yaml a file in next.

Correct has in linux-next is f85f2ce57783913a23f21b9d3d03a27357c07c3a:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
?h=3Dnext-20230607&id=3Df85f2ce57783913a23f21b9d3d03a27357c07c3a
