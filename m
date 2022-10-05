Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F29165F5343
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 13:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbiJELUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 07:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbiJELUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 07:20:17 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4426F19C1A
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 04:20:16 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id y205so5677513yby.13
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 04:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date;
        bh=VhbT+I+m/j1zIBMdGQ5YCdD5f5II+ZRqGX/fHpao/tc=;
        b=Akm95zcr2eRzWiYh9RhuXazaleFuN7OMQOGCmowzgFNHfkoAV9eeFU0qbuxlFMm6xx
         Sm+nhdpHiC4ho3Lx0smbn1y/5EEL5acNzyrOn4bgLpXb5K2HueCPDuhmhDyC1Mct9Bpc
         t1lOpAK/qE9bkswmrMIU2wI79IqV6XZ4wlkeXZJ7bfrLAn5ztlAujm+eW1KcoLlDXrMa
         8ndyKprWqqkIznqn21bqSZGIfU2J8ld83ERy3v2Ox7YiDeuIwUtJW4yQ9RkB9IzAel9R
         1nLKm5I3VVm6MbfkuvHsBzDXVfe7gsDmLxvNzrXLBNkSM4LYtFT3VC8NXz6lyP7Qp6bC
         o0rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VhbT+I+m/j1zIBMdGQ5YCdD5f5II+ZRqGX/fHpao/tc=;
        b=zMHYjwn59TI87Iq/MAuZSKJowBmUOYdT/E9gDweoUI0piS0Aflhs0y2fouVqELs66z
         gVUxWR8FNqrxAq0Uc08/DFbJ4llOfJyQ5hs1rGd0V+zj/rbQOGVQ6P+O5dtSyJvuXc5k
         L6nBAyOgFxVXP3w+cR7HqbKWKOQNnbUFpoMobA+oTKbNf6ecF/MP55+W9KIDyi0ryLuQ
         Ne+7QsSjGu4awamjgbMA3pX1RYtAqpWUlwen5wC156WG63v4zbAXrk7RLSaXqLC1GDG4
         R8Sf4+35zSm0hetfkT5dSPMk062pyXh7oxrYuzzcHxBkGJ3g5EDlCvsHhlP4fPT0MrPw
         Wwvw==
X-Gm-Message-State: ACrzQf1UZKomWZQJjahcNQ88L+JW8loZkhf3MULiCWSvCjt34zOy/Bon
        UIB25pdXEpqSnOyhuLen2ZTFqmSM42gKJudUDNI=
X-Google-Smtp-Source: AMsMyM7yLOBwGtLcCXc3EpQSTm6ijjS0J9LiZHMMxW9KFfqRlqybDmI/+1PS9iV7ACuLcaP9j6nW4g4JUKA3HQYR9tw=
X-Received: by 2002:a05:6902:1508:b0:6bd:7f26:d838 with SMTP id
 q8-20020a056902150800b006bd7f26d838mr15369085ybu.589.1664968814686; Wed, 05
 Oct 2022 04:20:14 -0700 (PDT)
MIME-Version: 1.0
Sender: mrs2017sabahibrahim@gmail.com
Received: by 2002:a05:7010:45c5:b0:305:8507:b5fa with HTTP; Wed, 5 Oct 2022
 04:20:14 -0700 (PDT)
From:   Elena Tudorie <elenatudorie987@gmail.com>
Date:   Wed, 5 Oct 2022 04:20:14 -0700
X-Google-Sender-Auth: 4mvz--WYbnI0yi51NndgZlU8_BU
Message-ID: <CAJvpSsJ=G=OOWnzidDz3jCYxzx9jjsCfWrz_kNVGyHXt9e9UQA@mail.gmail.com>
Subject: Hello.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URG_BIZ autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello
I Wish to seek your conscience about something urgently, Please reply
this message, once you get it.
Yours sister,
Mrs.Elena Tudorie
Email: tudorie_elena@outlook.com
