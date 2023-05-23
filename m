Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A610170E9B6
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 01:41:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231687AbjEWXln (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 19:41:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjEWXln (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 19:41:43 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DF8DDA
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:41:42 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-253310a0df7so67012a91.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684885301; x=1687477301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0qcN4qpn6euVd7cpQS5agPXb6rrZj0n8++htZCbIkVo=;
        b=BP3xxEWBFZDbZ3hLN+ToXsQApTNSJGPTRwylEs9yZ2ECgjMPHlif4fWI6JterdQVRS
         uuW5DYu0B8q8WPqmFkg/pG5r3RC8zJRdtuE4NxmMLAeU4aQN+BgNJXdTKH/MaRsWZKqY
         u5VRq1jC72VRBypFrDSlC+VFY838Deat5QdrQaZGZ4h6iJpXAMaUY9dlvKJ0jILTybMH
         NngWTzvw+mQOqRQdwhbPtXmGqdKBWTRbzSuI/IHpzmTN3baICO7MdjJQbHjcIh71Vm6v
         2MbmnUtCanpuj/ojmc1pVz3OUHHfcS0Zvvk2pjNkGLTwoLmoM9yjfjOQYGXcGjycuU4M
         kTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684885301; x=1687477301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0qcN4qpn6euVd7cpQS5agPXb6rrZj0n8++htZCbIkVo=;
        b=j5a1mJ5XfeR3b0N4UJoWsaetvtyzd5GYQmvBxLVnepUQ9/UcByB7fC0L7BGSEhPY+E
         CTPuGrneUuCKbUda4S6u2hU2XBI0Ric9Pqsy/qYFKy2R9CVFF4k4JvGiisrVjpx2weSA
         YmnMZB5jNNkS+W9ouY4JduIi6ceD5TXxpNWCiGMdziImkOkydt70+svQH8Nu9BZm2FYK
         WBRLAk2J1WfcNTs/grI/XhEOlRR+Quv2s9e7pjiCrCQu+HSVYd+Mz5hxNVlbrMiT0IFa
         nJD99jJIBhx1LuOE3XxLBLQiYQrKclYLH14NF8zcqX+SEtvzjDwU2fO/TgbEN4Oomq+R
         3vEg==
X-Gm-Message-State: AC+VfDwmeVyL592tWgPkcsIxRQYjhq8wKDO5CFGW1yJnxWnm6nV/tIu3
        mS2XfTv92pDk8GFfnpf0WuYXHhATJazaoOpnGRs=
X-Google-Smtp-Source: ACHHUZ6W1tAoOXnd0kBTIAF/4o3EY7yozKoBLYms3h/sz8j4K7RdAPFDLDUzntamfk0cXLgGfDl3MMxH8M9UcKOXRbE=
X-Received: by 2002:a17:90b:1e0e:b0:252:b150:6ce with SMTP id
 pg14-20020a17090b1e0e00b00252b15006cemr878469pjb.1.1684885301547; Tue, 23 May
 2023 16:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230522201404.660242-1-festevam@gmail.com> <20230522201404.660242-5-festevam@gmail.com>
 <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de> <CAOMZO5BtPUu9CfxJO-mScB4OYeN3g7HxKF=D636wFSUJ5HMsoQ@mail.gmail.com>
 <a9e2e19f-e9df-81e3-4608-71beed85852f@denx.de> <CAOMZO5Bujbynq5CSbWQu+aEsiaTP686OW44MujDFuE1k5EMeMA@mail.gmail.com>
 <b0ad67bd-c37a-67c5-f167-37b5cb8a54d1@denx.de>
In-Reply-To: <b0ad67bd-c37a-67c5-f167-37b5cb8a54d1@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 23 May 2023 20:41:29 -0300
Message-ID: <CAOMZO5BjiHR7XWodBa=MkEa+N4E9ZXYD9hoBFqn5LJkMZ6YtaA@mail.gmail.com>
Subject: Re: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
To:     Marek Vasut <marex@denx.de>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
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

On Tue, May 23, 2023 at 8:36=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:

> Wasn't this already rejected by Krzysztof ?

No, it was 'simple-bus' that was rejected.
