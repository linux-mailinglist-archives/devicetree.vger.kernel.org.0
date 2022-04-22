Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 653AB50B432
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 11:36:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446091AbiDVJih (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 05:38:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1446092AbiDVJig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 05:38:36 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E7742FFCA
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 02:35:44 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id u15so6265196ple.4
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 02:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to;
        bh=s9IGPqOTuFEFxKMxMPq1P/MfyJrhGXNasZNiCUUGkGw=;
        b=PBaq9u5c61R3p2ziUNx8VwCST0GYqDPiScGVM5QpBH0w5NCTTnZaTBd4Ktgy5VuJj7
         GL29bvtOW0CluN4sHW9I++j6zLpBuS0gb2dqOBQAuLiBHpOgnDqRm6lPg7WdKFW/i8qX
         VeddlSjO8bCl2QMIkffSu03YV/ugeDXKK4IjHSUhvyvuNPkKQQnZ4MHXzD/ZdN5IO5HY
         qIOAdXossyt111HBV92fgkPTSvyVg+cb4b65Is1ZtvICbemvrrPV0cXg3ShiRvPb0253
         OGqgd5ilbVsZgXnP6RCaFo+zihQCkIU5OJdN6eRLW6v/gFXBA8O0kXNIK6R5b+5UCbfA
         6RLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to;
        bh=s9IGPqOTuFEFxKMxMPq1P/MfyJrhGXNasZNiCUUGkGw=;
        b=6T/zOUOKXqK30rjBKJ/l5ChyfxJCwCbBhYp7duA5Qz/pNj7GHYvYRpzk8M6oKLQUJb
         f5fKXeRBt6z8pfu0NiH8FgiDVyridVMaLptYw9kjZNH5S42fjtXAM1LVtdyy2dttKVdi
         e8qyrhKmzMjEuiWkDT1Fv92zeYM6TBkQdCJOxn9ZWEvpflYJkqIinv2aHIJe9W7k9fO/
         +kCy7xNrxduZVDujb2fqNESedG3yv4781/QshFIIYgXyUxngSROzwLUvqegoz3DlkPY8
         WPp61qzzD82jWSpM/jFr7WsJBjRM+I7dAsHFTyjadoOvW24PssdpqiBy7VdX3F3biHFo
         3FXQ==
X-Gm-Message-State: AOAM5316PdGEQogNhV28y2bgZCzUGxR3X9+qdMN/Puwp+wptIXA0xapM
        UYiCFc8EJQBcC3Emf307GJXzqv2PC/rWkFGHgZw=
X-Google-Smtp-Source: ABdhPJwkCVPeUxaqaj8udJkLZy7Hgy+tjfgc4NqXA5AD1zXWku+4nVKBWMl4fzgv2Hx3exiSylcRyTAtJ1QKJQ3L5mM=
X-Received: by 2002:a17:902:bcc5:b0:158:f19e:ab10 with SMTP id
 o5-20020a170902bcc500b00158f19eab10mr3397496pls.130.1650620143782; Fri, 22
 Apr 2022 02:35:43 -0700 (PDT)
MIME-Version: 1.0
Reply-To: lawrencetansanco.y@gmail.com
Sender: jeffreymichael962@gmail.com
Received: by 2002:a05:6a10:d5a6:0:0:0:0 with HTTP; Fri, 22 Apr 2022 02:35:42
 -0700 (PDT)
From:   Lawrence Tansanco Yacouba <lawrencetansanco.y@gmail.com>
Date:   Fri, 22 Apr 2022 09:35:42 +0000
X-Google-Sender-Auth: bsIv3CqtwLC101OnbtQxwVNTK90
Message-ID: <CABg1=o0NH=iRu9ie=kZjEZ57EyVyZnTS42tju28B8GeXYB=guQ@mail.gmail.com>
Subject: THANKS FOR YOUR RESPONSE AND GOD BLESS
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

.
I will like to disclose something very important to you,
get back for more details please.

Regards.
Mr Lawrence Tansanco Y.
