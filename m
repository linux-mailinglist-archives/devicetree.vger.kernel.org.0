Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F49E54F2A2
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 10:17:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234590AbiFQIRc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 04:17:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231145AbiFQIRb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 04:17:31 -0400
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48A796831E
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 01:17:31 -0700 (PDT)
Received: by mail-vk1-xa36.google.com with SMTP id s1so1675172vkl.3
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 01:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=rdGNxeY4uwF5kCSNHp+9tiUofiW0g8jTahP1ohNDpTs=;
        b=G6QFe2ze6PeqK3qjWO1BgDlvV5VCYMdjPnUBDy1v8EWtJCpnxK10xoHNHzUVeK2nt+
         51jsdpIVdllHlocb2/L8I9EToHJNGZPfwOV56mr3G1TnBC/xBsu/LKPrkQA1cK+a6PdG
         au5Lr9CYy2tMNwku+uPnwg/hwlpU2k+vMTCuzMH5Uwt8ls0xRQHOfTkB44laEun98mSy
         /8M8yvUvYkIS+nmNL0gMBHMJkHt3Bysf9q4KkpxxbTa/VbobbKgt3laQ15cRw4ivsfYO
         IzFfr2jBFm6E6C6gbJeOsNOJJpmSWKQISS3j+PwhFXYd/IK9/4amxnwwRG6a4J7W9PKb
         zF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=rdGNxeY4uwF5kCSNHp+9tiUofiW0g8jTahP1ohNDpTs=;
        b=A1NmJq+CTWgZIBgh3DNXV5wRK9g7a4m/apjEhq8yUsprswGoyIOtKev0+uSJ9AAZjh
         CWhJmCbMaNv9XoPBRzSAc/8Mi/3pcNBOlEH34OH5pKi+q8vxHioEjKhnwyoTg92hgUKJ
         ppYO+CWXzk0IfffN12aJRRlSOwNxWsUDmh1qSD4c9ib48rVgD0we8Of6eda4YIh0TvII
         ViB6POCG8gerV+PTeYc6HxejWcckgdLtzitJmnC6DDwo7fW8lpvs63laIj0YMi8F8POA
         rdheUvZ0LKe75l1Q24WjwZLPfi5OuN3hP6R08lao69M3/vlc/5yd0xDEVZrqIfkl0AGV
         q0kw==
X-Gm-Message-State: AJIora/zO7RqFNRBTNc0mEpwUbfbuvqtj5v5/Gr6S3C5TN5EjvV+HSea
        rOqXdMhe5TW2F6iwjEWQ/arcAm684oOD7JOJm00=
X-Google-Smtp-Source: AGRyM1tQljKrh3rCLuIv47knjP/Ee64vdF8A2fMbcsZlde0cdTyWchZqGtExZdIB8n/W9dn1MxyVEA1tiF78xIwkzWk=
X-Received: by 2002:a1f:18c9:0:b0:35d:121a:32b7 with SMTP id
 192-20020a1f18c9000000b0035d121a32b7mr3996758vky.8.1655453850448; Fri, 17 Jun
 2022 01:17:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:6c7:0:b0:2cd:111:3f8 with HTTP; Fri, 17 Jun 2022
 01:17:30 -0700 (PDT)
Reply-To: infopeacemaurice16@gmail.com
From:   peace maurice <peacemaurice10@gmail.com>
Date:   Fri, 17 Jun 2022 08:17:30 +0000
Message-ID: <CA+3UWD+12uTy49HkwsAaNeJ7qu6nUvCxFm1AGr+FBEjKDpkcBQ@mail.gmail.com>
Subject: Dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
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

I wrote you a previous message a few days ago, but no response from you?
