Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CB3E6D7010
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 00:22:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235377AbjDDWWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 18:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjDDWWO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 18:22:14 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3556B1980
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 15:22:13 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id f4-20020a9d0384000000b0069fab3f4cafso18147450otf.9
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 15:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680646932;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mb4LYTz6ltLsND5GCzIBKn5H+VpjQGr9vlRB0NuV50c=;
        b=eiSwQ7ffxssNcRAZkKdUKu94XpyYtSzZ76nsFf3iBPbP3ub9/cG6GBOWwQXlROt0/I
         byHWb5qhBsOVt8h3nLHmfly4vy6BFGMYYveqTUGoEtBrTspyb7sqBiLu/Ed58QOyTzGD
         QqF0AdbJaZ/ru0fhMxy1vSgHZqw1l9xTcdeFoYN2arRnplBGVsEyHFeAjY4YYjHm9LAr
         Y1T90ozq3l8uyS8YsaEAOtwC4NSxjm6zK0OoBrin5XuommNmHlumZ+c0YvVFhK0e355W
         V2Lwfx4qp78nSgrkR0zlpujVPiHeCBtSeeatRWNQkBiQ7sO+yOjCrUAEZwLTp0Y1Kv7z
         fduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680646932;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mb4LYTz6ltLsND5GCzIBKn5H+VpjQGr9vlRB0NuV50c=;
        b=V5nUKZnCy8Sb6wl7VxTXnqLU9bALz7fMeDP7RP5dHVgj3lB4kh6+/6gzZcpKhIBy76
         M88YXKskf72RGGYXNWwA45a08iNYiCYUj/nqgainwvkfQJdwXRnCVytRaZh7yOqClEZz
         n9GCUNWFj/vXlExXf6nNAILP+5QhXF9PCZoS6fPdTcDARdKFAwABO4xsUDc9t/QBZCII
         2uBDihQR0PaVWoIxL+o276HW1H6DpOSuqblXIKNnAbjy+t3UZ33ZrwPXBh6nTB0DlE1G
         m4cue6Ahz3xm3v0fcSuPSJS80HxJD3yg5tlFxCz4Rf5dmpUrYFyZi3tnxzkOeHbkeYE5
         N4og==
X-Gm-Message-State: AAQBX9fIey4Rdz+w1Ys3wGYKNBCKWqH6mE10u709jbkCBakydGvv1oGY
        b4G6ki2Ie4uG+ipOjzOB8DAqQmdgBoS06FLmSyY=
X-Google-Smtp-Source: AKy350YIYxgEtXnWp0S6tcRbiwNdljesMqnOb26uGEE/9wCBO/6LyflR2CePIQi76MPivH9mnVzwLBtDJjxY380blCs=
X-Received: by 2002:a9d:7ac4:0:b0:698:6b65:f563 with SMTP id
 m4-20020a9d7ac4000000b006986b65f563mr1326364otn.4.1680646932309; Tue, 04 Apr
 2023 15:22:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:7211:b0:eb:272a:83d1 with HTTP; Tue, 4 Apr 2023
 15:22:11 -0700 (PDT)
Reply-To: lilywilliam989@gmail.com
From:   Lily William <mralbert139@gmail.com>
Date:   Tue, 4 Apr 2023 14:22:11 -0800
Message-ID: <CAN2p9o7S1gQ-bfZRcoMvB=xNjtgOC4ay=fJrBDaWDRcWGOdJ5w@mail.gmail.com>
Subject: Hi Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dear,

My name is Lily William, I am from the United States of America
presently living in the UK, Its my pleasure to contact you for new and
special friendship I will be glad to see your reply for us to know
each other better.

Yours
Lily
