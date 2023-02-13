Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E556693F7E
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjBMIWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:22:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbjBMIWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:22:39 -0500
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFDDA126E5
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:22:31 -0800 (PST)
Received: by mail-vk1-xa2e.google.com with SMTP id b81so5867019vkf.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DNFhsPbkfGfOWNF5M4aRb8nwKD8L5aVj2WV/H46NM8s=;
        b=FUl1PYoI6f7iaowuUwS7WQ+lm59mVLYdd9PxJxMH0hpKlctnYJr0OwwNREZKLvP2Am
         DwKWxu/0Jk+JGgsmeUlJTQd80TUHaP1Ys0k+RwJa6m5zdIgzFA7kMIvgujH6RcCPKYAL
         Y21pdWTp4KxdAuVRvn7mVLVq6kLVuS+ux1rKDDbBOtrWUDVv0qWjC0Lc/JPt6dSy8Zd6
         RhQRNOynaR9GbZ8sh75eYUzwu8EhC3eTnQvv1L0hGSGxPG5TTeN46PL99z5a7RsbBp9U
         NUKVX16/+l07eikPflUNp3ohRYvlmk7uYzYWKN6xMVq9OnSL3HRBzDRfAv5VTzZVw4l0
         xx+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DNFhsPbkfGfOWNF5M4aRb8nwKD8L5aVj2WV/H46NM8s=;
        b=ri31pUR5eOMB1hA4+4Rsdgr9xzrTJYZ057Y9EO+9lwp5r3DU6NuX3ifwFLrbWAR1cV
         PwZW/dzUXZeiR3Gg2Ww4Du4uDNdaqhBdFOGh5laMHxMOpCj3KZ3yJFOuL4IWeiZZcU0L
         t1+BkuECYlHmz8bnfHpG3rDMB+GTF5HPrQrDzEjEVQKXvjvFFvwFSqn4CW7vSgZkbWLQ
         P5gtgljN7gZuR6XsRM8VMg5HzoO9yqJI7q/AeqEGvpGhvz5UOhakTWNolnAJMxFUBHRw
         4JPJMrwwamQDnaqvJHAS5Jh6+5guysHqAHH0RNbP/bmMkk3rQ4FI5tDOnJQ5T+g9ODnj
         h5LA==
X-Gm-Message-State: AO0yUKVzg6xgXhj8HgN4qXtjemE2/x29qKGnpNUW7C8S3aTFOlw2yKQ8
        LpXK2dlMexFtKRB8ZXyJPZ9G69x3JYrLKG9Wbg==
X-Google-Smtp-Source: AK7set+9UwkiFHdHvWwWhXVctY96ivbydUW+f3py/7uJ2afNQ6ep1a2hxq837+GFsQV5TqE4fgsKoS5daSneuGgcjrk=
X-Received: by 2002:a1f:2a06:0:b0:3ea:4830:a019 with SMTP id
 q6-20020a1f2a06000000b003ea4830a019mr3902464vkq.9.1676276550497; Mon, 13 Feb
 2023 00:22:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:d954:0:b0:399:647f:a8f5 with HTTP; Mon, 13 Feb 2023
 00:22:29 -0800 (PST)
Reply-To: engr.fred_martins@aol.com
From:   "Fred Martins." <fred49508@gmail.com>
Date:   Mon, 13 Feb 2023 00:22:29 -0800
Message-ID: <CAJFb9+A_oaVJb4x32SiDzSQe1=AMdB0dYt6R-AdvKbsbKJw7EA@mail.gmail.com>
Subject: Greetings,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings,

I wonder why you continue neglecting my emails. Please, acknowledge
the receipt of this message in reference to the subject above as I
intend to send to you the details of the mail. Sometimes, try to check
your spam box because most of these correspondences fall out sometimes
in SPAM folder.

Best regards,
