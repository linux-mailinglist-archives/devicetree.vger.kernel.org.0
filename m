Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A219E507250
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 17:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345946AbiDSP6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 11:58:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354099AbiDSP6a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 11:58:30 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C74237CA
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 08:55:48 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-2ebf3746f87so177316417b3.6
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 08:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=uKOipqp8mqIaL5GfzKTp59Nb61UdgrKVvXrHg8JSMHE=;
        b=Q6ZysISQ3BdzNd1OPcAEkXyeZ0wZ1VCCmtTLtSja5m07DLmiSKBQK7fe4zea6mpWZ8
         2pgyrgLOh8UudmOjO5xKeNbDCpV5MNJ1EZGPBqqs+MXTBAf5EKLsQijGC19IJ6tOe7R0
         gZBz31PwmusByLQCwQQ5U4Bk9Ob1MoEM0/w0gZyRE+Shw1MrWdbD8wLfq6unO9jUEAs3
         aKawDq8qoMfdQmpPZ1R9Lfp46F1dhlT8KmbAkCCwns0BmlM330YJcaYTsNHslwHyzXsy
         gZTiMfXFjRS3+T+XMumJFDwATELDTEEmMEDp/oMeoOTrPA++0NFANjjjfe9omkF9F4Ac
         5mJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=uKOipqp8mqIaL5GfzKTp59Nb61UdgrKVvXrHg8JSMHE=;
        b=bTRu+F73vP32JoerapJNEiWl0+81g6+WbHI9KRwGj9yMZ5nkgT6Sa++N3hghMBXJTs
         +VUEELgyLl9GjpT7kAcMI1fzERtar22tVGf4gkJ2jGhf3mz9CvBNwpMuzXAjxQp1+sFb
         PapvQDs+xj2d2tFuCRLYXfevBFAzVO3qwmQapRJz/Yd03NinvoWd9nlQ+rWAq6gI/YjT
         ixHT8/gMZZSpxZObhaCaxFmdS9NWMLuXRFE6nJjV0lOHLMnp3OIvZFiepVmIgR4vmmhR
         02EkuZ01bVfEqzbdu+YE9NaFgpX5IMpSbSGsb6AMH+/1EC2ILmL8o30RAkBw4o7p4Q/1
         Lb2Q==
X-Gm-Message-State: AOAM531nwI8yL0LA6ei7tciGQAy6DgY97J8b9OOWlIp1EzYTaNrMc5ts
        bzeRRR7omlz0nVy0Vk5PhtFBjV3xw37sjVn/+Zc=
X-Google-Smtp-Source: ABdhPJxIvD8CRpDzTac4xUj+Z62HxcVBRiVHzUNkfTeO/CwbCHtM/Stk1Mx3RXv25hnZDmpVa1HzHPOU0rFpj8Iua84=
X-Received: by 2002:a81:6c89:0:b0:2f1:c84a:55d with SMTP id
 h131-20020a816c89000000b002f1c84a055dmr4147124ywc.333.1650383747079; Tue, 19
 Apr 2022 08:55:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:d08e:0:0:0:0 with HTTP; Tue, 19 Apr 2022 08:55:46
 -0700 (PDT)
Reply-To: michellegoodman035@gmail.com
From:   Shayma <shaymamarwan08@gmail.com>
Date:   Tue, 19 Apr 2022 15:55:46 +0000
Message-ID: <CA+HOoT34kpcCKtwbk-1uBevhws3ihJ1qCHPm74YLRCsndh5tcg@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_40,DKIM_SIGNED,
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

TWVyaGFiYSwgdW1hcsSxbSBtZXNhasSxbcSxIGFsbcSxxZ9zxLFuxLF6ZMSxci4NCkjEsXpsxLEg
dGVwa2lsZXJlIGlodGl5YWPEsW0gdmFyDQpCaXLDp29rDQpUZcWfZWtrw7xybGVyLg0KTWljaGVs
bGUNCg==
