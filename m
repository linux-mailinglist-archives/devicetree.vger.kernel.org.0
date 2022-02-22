Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7814BF721
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 12:19:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230339AbiBVLTv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 06:19:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231532AbiBVLTu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 06:19:50 -0500
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9CEA10DA7D
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 03:19:23 -0800 (PST)
Received: by mail-ed1-x543.google.com with SMTP id q17so36256577edd.4
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 03:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=xVJHepNq93ePmAbCv1LHbdOWJcqWYQh8v11fr0KUdVw=;
        b=UyoRCLaUPk/4wsvs/KFJIZ7vHQsIvOBIapHxxrNEm1UCyzR1ROWdclvEhZSiHZO96T
         WLw7MadEQJTgosOCpzzlK7bC7NHLFC9Eze/ZkWUSpQpgMtkACqtA1K8zy9xStj8AaNvt
         4CUe2WQ6VgObPc8A5Oudm3dyZNo3WQ7zaB9FPNWqIJy5EDjbNSLlKByvz74yAsP6a9us
         2GcWBhp+Y2Fwf31NK5DyDw9IvGrz2i0AQPeEj5xrCsKUnO3jCONCEXGwIZ56heOdUOGN
         GKWiW54j2tmv4+T+cOh31wE8tLLEA1SoDO2pAbGh1IczAy++1i24QWGMLPLnUvYT/rL2
         FRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=xVJHepNq93ePmAbCv1LHbdOWJcqWYQh8v11fr0KUdVw=;
        b=y3XEwHBZ2i/E8i9Q8laQdLIl0gCp5XaxctW10uuEZWfQ7XNdIdmNMnXQDYHMw8S3xK
         853gpPNCKRMsxyXBqJuccV17w89kT3bxcXtIAOp2sC4H8p/u+DFPKIFRp6C+19qt6zi8
         qySlebjwtF3pbS6ZyCydi4uThW7R/eAdN2SS+8KUlDU5T/8HFqhayxzaZ9fduL/UcP7d
         H85Fk7K+wktRtxY6wcl9g7QtekWcNdEM6Yj1AtkDjRL/+nfiX4xtfRC88lU/h49Bki7U
         5xk4wyBgVLs0bgORRo+SnQlSZ2vRbfRPfaQVPxB0nsEh/wGDl8n3rL3ak3ZO+4IKrYPA
         XCtA==
X-Gm-Message-State: AOAM531KfYymEOcC4A1JW1Z4uCMbms94Q19fVNKOlOcuQqH5ZssmFVZ8
        k5ta5F1iqbNvkj+YftlXnzwSm65LGI3S99XrWcA=
X-Google-Smtp-Source: ABdhPJzOSMRnKXzC+s+Qzxx2+d/PuUqEIa/ARXVZDYB7NtMtcukAPmNhYHUjmqjxwovpexAgxeuYxaxuTJh5arBR7Cw=
X-Received: by 2002:a05:6402:34c1:b0:412:d12c:e713 with SMTP id
 w1-20020a05640234c100b00412d12ce713mr18909592edc.312.1645528761525; Tue, 22
 Feb 2022 03:19:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:3042:0:0:0:0:0 with HTTP; Tue, 22 Feb 2022 03:19:20
 -0800 (PST)
Reply-To: lilywilliam989@gmail.com
From:   Lily William <g87110731@gmail.com>
Date:   Tue, 22 Feb 2022 03:19:20 -0800
Message-ID: <CA+AJNSY-4_-MuyYF06gC6nxHQKc=gB2EOpgk9Z1v2_h6yHJRCg@mail.gmail.com>
Subject: Hi Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_40,DKIM_SIGNED,
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

-- 
Hi Dear,

My name is Lily William, I am from the United States of America. It's my
pleasure to contact you for a new and special friendship. I will be glad to
see your reply so we can get to know each other better.

Yours
Lily
