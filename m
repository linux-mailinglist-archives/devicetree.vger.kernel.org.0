Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C36C8709212
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 10:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjESIvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 04:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbjESIvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 04:51:16 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 322DEE6B
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 01:51:14 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-ba71cd7ce7fso4391776276.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 01:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684486273; x=1687078273;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A9VGGyuCCLKSSiQdC0nI1d1YAaPWI1/GKqon17Q9aHQ=;
        b=lWktI6Uz39IXs2unoPBz8PaVAwANAdDBh1SWmh4W4JQ1WhJ/cA3OlipxvRKbiRMN13
         Yo0mGe6NCZFZOjqX041AYYazv0W+8CXrg8fGW6slgK1Ouwu0luiShFEt907pJfyqX9fZ
         TsuP/T8BS+RLALkYmpcAI1ClEzy2K4CZCsowO4mJDHCNzyaOPxOdeqBoHpmp82WZnaRh
         7nZXruTd+2S+zD7mf8Rd8Kcu2R/AmgMv6qVHXYXBTDEwiFCbEbmSJ7gqqVAjC2Nw82LG
         Wcg/NAmSDReSgVnpnDT8/zB5xXjQeVgP8ffzbjx7dal37Jr/yDrCyz+A0cHYgQdEQJQw
         mAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684486273; x=1687078273;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A9VGGyuCCLKSSiQdC0nI1d1YAaPWI1/GKqon17Q9aHQ=;
        b=Yc/baCwMn3RRgI18ppJlDbPP9H6MtCkf3x1SRDNZ5r2AHRRBoNGhiboJkXWlrOhBuY
         ZxfjES3plssowwZCA25a7hl25BKNq0jUftjcfUqRmt5UMe0GsREMIny/SOD696cBT5bR
         OzF45SuQre4DUoY1R7F1NzdD3uJ77Afpq0/Iq0A0w6qfh6QFnqXljyApDVpGNEldqx99
         lX6iIFuCIoIeFfjH/1VdB30BA1ZaUF2n6mn8sFOB5cZ2ft/Tc7zsukVnncGrUJaWMeed
         qPDHSBAUtYhP2hFze1W6pB0oksqegE3ecWwFU6mb3ni7q+GMQScclvu4bxP1Yjr+0cBw
         gEqw==
X-Gm-Message-State: AC+VfDwyo+Gz5fWX0Hf+buS4/Qqap8M93Hx5dRLTQ0WBjqAcvBYrEMBo
        LuS7RuZ0KF7Feyjt6kBAENwTQHvTyRCB2Ap/umU=
X-Google-Smtp-Source: ACHHUZ7T35wIxsxtwL+9fMt15pqbiiIO6uMVxa4GTN+sHNTmI4YoPBPDvAASgeeVb7BXz1t+29glSe26t7WQmzMAtQs=
X-Received: by 2002:a25:1f83:0:b0:b9e:8b85:80bb with SMTP id
 f125-20020a251f83000000b00b9e8b8580bbmr816338ybf.29.1684486273233; Fri, 19
 May 2023 01:51:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:6108:b0:2fa:ea06:e64c with HTTP; Fri, 19 May 2023
 01:51:12 -0700 (PDT)
Reply-To: ninacoulibaly03@hotmail.com
From:   nina coulibaly <ninacoulibaly01@gmail.com>
Date:   Fri, 19 May 2023 01:51:12 -0700
Message-ID: <CALav4vQFnxNSThtG_wyHDRndqxcg97sNuQrYCU7NVUhENKDbsA@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
