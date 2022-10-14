Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF2C65FEFA5
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 16:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbiJNOEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 10:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230345AbiJNODN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 10:03:13 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFDB3E8C6C
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 07:02:43 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-35711e5a5ceso46609957b3.13
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 07:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=H3tSqSVP/KWs4VJIPMxxXHRbAAqjUUkTUhdz1EwuOSnAON0G/CIkscOGeexrxPH4gR
         GoyTYsgNLIwpq7I/7X4SX6p225+tDJVS78xZeKAN7jHb2k6NQ9ctvQo+p//1OkQF1mvv
         c4vsHKM7pM/97axn82yiAXHnLhROkLHOQeVSoPSvrx5TS9be+rqPS3b/j9L3f8gifzK5
         25DXwsR9hjzQTF5ugd6rhhwpEOdLcA/owenjyYqMqES1gVSWmH1g/eCAf6gn3vPnsEUY
         5fvJzJ+ifT0e9btI03wxZQkYVIdzZkrzrQ4Z+p89luTjgyuzQFAJLln/h1z6E84m5Ghu
         svog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=bg5xrISEficQRM+9VoX8LSPimR9N+cydaZKrPSBWoxLrMSPwk2KTRQZScQ1hhuldwJ
         9L5MYv2+9UVGzVq9RR6LfXOw56gM9mq+894pb9BIpKRUFs6Cbh6LyOAYcYyvjb4GzqE2
         auXpHW3hJQDYc09yrMGlL4a3lISeaCOEwpIMyAcsjqpalMOsZF+CFmBZn2ehUilzB7mh
         qMYPUY1ECfkxEdG6Le6C137zPjlWuez5wWxchlBKmhVQnTjnmxyfSALKGipC9STGpi38
         TKZRfp0RE1gksjfqmkF/mY1DiJAZGTE3YHNp6zn4/zCofkqejSVZeMJGUQQuMMX4PWa8
         d1eQ==
X-Gm-Message-State: ACrzQf1+64iqvQz4n2oLMRpD+ZHQWW/K7UdLiZyqDFi8esjNdCNxwacq
        ZkTA/FMo0CggmUGgmsEByL4cjxXULu5QI2PA3nc=
X-Google-Smtp-Source: AMsMyM7ZYSR4jYbZB6OIGQLGW7fPEIG2SNZ1I8TbLqhTWODf08GadQ+kfq/mJ73fQUj4334GxDVyzOGNtb/lqmFb1lU=
X-Received: by 2002:a81:9202:0:b0:35e:face:a087 with SMTP id
 j2-20020a819202000000b0035efacea087mr4707194ywg.55.1665756111299; Fri, 14 Oct
 2022 07:01:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:6c05:b0:3c1:5961:57b5 with HTTP; Fri, 14 Oct 2022
 07:01:50 -0700 (PDT)
Reply-To: tatianaarthur72@gmail.com
From:   "Mrs.Tatiana Arthur" <goowjarwq@gmail.com>
Date:   Fri, 14 Oct 2022 16:01:50 +0200
Message-ID: <CAC-x_XHBvNLc2SP-eHhjWUFbY=vQKMZv9nk6yhsEWwd3eTU-YA@mail.gmail.com>
Subject: Did you receive the email I sent you?
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


