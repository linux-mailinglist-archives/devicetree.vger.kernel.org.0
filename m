Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBADF4FB9D2
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 12:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345608AbiDKKiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 06:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232535AbiDKKiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 06:38:55 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11FAD43AFC
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 03:36:41 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-2ebef467b1bso71324417b3.13
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 03:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=SZlflNwJM/FoSzNidwvG3Q12/AiRGSJaNEWCCSkms7g=;
        b=oWagwh9F0KYPuycXXW4aYK8qP0LTg0EOyBxzudr4Ve7sSxfJ+YRyqUaFJfmkYXEbSI
         BOgbeBtcTtWjRKhjaKRYWyWecFyz+Ja8WMaVzDoOfOe7f2pPi1Zbl8FtZpMsccxvCA+G
         g1aunTkB4/k0cbIyJRgcxvcV/m2YxAVBv2qFbHzzIXX5gXV8+vWFVIuWvOYnOhP2mgX+
         rPJn99baJjdjyW6yGXE0B4UbuYjT8oYs9Q0mxZ0IVXHjGj+y0tfu1IAp4uLzWGmGXQ2i
         g20NPNxNTVKIeleSjBYwApMBFPshwn8I9KUNLQ1/KTiNhmYoEvQQfM/ATcaQwgyBNF80
         S+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=SZlflNwJM/FoSzNidwvG3Q12/AiRGSJaNEWCCSkms7g=;
        b=KtQdSsm3T7irJaBMCfeJuDIy0zhG4PdJxCTR3N07e2e9bu36Bey56/e7IuGoGXlkTQ
         tInS5EQhcN7wB7tuvoLQAY6Edf68eW0wswZU+bny2+WxR7Tv3SfJTVjuhG0DzHiSJIvM
         ij5GCEdPoajA3ultLhGoLmYcvAsEWR9CRUomJ2fRH511o6HXpuV7reUZVKaJ1a4rSsor
         Sk6B0XLrUtcJQawzIK28VyBS6ZpqzpL+nhbLaDTAt2p7Os4dpFZyHNJaiB3vy/gZDreJ
         2Evf1hlfuoQDbkpZMlVNdC4ptGCrWIJ+9V9yutHjk1DnhiZFbqcBwAdz1Ynp0r46Kyab
         jRPA==
X-Gm-Message-State: AOAM533hypLNgbqg2hFRt6D261agsV85rpAivYB2nCT5gtkquxrCcaTp
        YNY5zbXy8OtxOMsTBrDedzosTpxJt6Lb+BrwMCw=
X-Google-Smtp-Source: ABdhPJxucW4T/R51SlGOUnZYKrThpNeI/jzuDv9A9KUJi0B17lu2stLzhjBWTH5aSeXQW6ifwcVqiP2QOQt41W5cu3c=
X-Received: by 2002:a81:1b97:0:b0:2db:640f:49d8 with SMTP id
 b145-20020a811b97000000b002db640f49d8mr24302365ywb.326.1649673399916; Mon, 11
 Apr 2022 03:36:39 -0700 (PDT)
MIME-Version: 1.0
Sender: anamlo2019@gmail.com
Received: by 2002:a05:7110:8204:b0:129:8d7b:bc37 with HTTP; Mon, 11 Apr 2022
 03:36:39 -0700 (PDT)
From:   Hannah Johnson <hannahjohnson8856@gmail.com>
Date:   Mon, 11 Apr 2022 10:36:39 +0000
X-Google-Sender-Auth: 3xjuTkKx2n9G6FAmiL5FOKpJsa4
Message-ID: <CA+pBdK7XavYAvi4g2NvSULJ-z46SjHg1K09-8vK=00x0z5JucQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other more
better and share pictures i am  expecting your reply
thank you
