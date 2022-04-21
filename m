Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17327509DBE
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 12:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388445AbiDUKig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 06:38:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348260AbiDUKie (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 06:38:34 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C166D3A1
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 03:35:43 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id ga4-20020a17090b038400b001d4b33c74ccso3502784pjb.1
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 03:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
        b=DuzY7rUHRzXoGFGfhE5pxkY0ntp+rTJLUsPtfGEvnjo/5lO4p6XBT4zfMfum6MNlLv
         W1WpqwncMTZ4NSHeB9n0KzoyxOGpEYbY7wzyPSc9H6TlpX5rHzMG/3VK0/5jGwWj0Cub
         P58MaqmRmI0H9M2ExfHFdm5CDoYboJKUfcL8YUNhsg83GLstj04ApVZjymIQutnBk/HK
         JkVrzRlvZk8XfVMKAh0oHQQPv9f+NznFL8JkS+IQiN3lNA0w5F2Es5rhzTnRvOo1YxAu
         Au5/Z91FNuyKt0hH4i9U0PS8Gvbnbo+Bm0eyG6xscBesz5uBhcucAUe4b8Cgh5fCvIIO
         Kg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
        b=xHv3vUGvXG8qbG3ifeuvdH1q5Yr/XDoC3vmdwEFNbPNQHn+zHHE/PoGouasYn2fDJG
         9ub7VZsc82fQNHkAIBwhkT0IrH0kvFMmjr6SLvYcie+y1aJ8Vwuj9KBgjfyG8pN9NAz8
         qv4hgRKn3SzOHT8tXEEDtCXrMA1xsPGHH2MK5X0GY8Ws5vtWrgmnOyx/F5Nw8nqYSbsc
         Eb1XJtG5H4YckFvqGRCb5Zrq2N7qQSNsnqftrJaZUkCGNIqZOci/56wT0GSm2DS+q8wv
         lZ0z7Mgda1qUJCUfTkBWlgPywOoRlZHfpnU9wEJlLXVqGKT7AkTn8XWrsvVIVVaTaqdV
         H+ZA==
X-Gm-Message-State: AOAM531l5sRKYkJLOtfGjP1Kjp8jJegZaZQAxnda96aT4ltSGB9hLg2j
        18s+HcjazwngxacStQYZLyJiMX98k26AbjEt+7U=
X-Google-Smtp-Source: ABdhPJwd7wo1+saee0v/ztCSzf6gbJfz32plAbQWDq/WoyRuaNeufzFpy5DI8xX05ADz0KoWboKfmE7/mHOb60rlg0o=
X-Received: by 2002:a17:902:f787:b0:152:157:eb7 with SMTP id
 q7-20020a170902f78700b0015201570eb7mr24050901pln.109.1650537343388; Thu, 21
 Apr 2022 03:35:43 -0700 (PDT)
MIME-Version: 1.0
Sender: ndubuisio992@gmail.com
Received: by 2002:a05:7300:1482:b0:5e:412:aee6 with HTTP; Thu, 21 Apr 2022
 03:35:42 -0700 (PDT)
From:   Hannah Johnson <hannahjohnson8856@gmail.com>
Date:   Thu, 21 Apr 2022 10:35:42 +0000
X-Google-Sender-Auth: LR0vnZXJAVofE9ix5298pvrpqII
Message-ID: <CAO7YTNnkiPMkRR0oaib4B1PakzLdgk5M3KWhsVcsVNiNKcSqQQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other
more better and share pictures i am  expecting your reply
thank you
