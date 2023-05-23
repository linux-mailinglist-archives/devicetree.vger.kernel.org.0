Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EBA170D3B5
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 08:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbjEWGPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 02:15:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235176AbjEWGPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 02:15:07 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D995D118
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 23:15:04 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-309550d4f73so2955944f8f.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 23:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684822503; x=1687414503;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=41kW5fOWjdzzcQ6HaiOHsjJFnjWCo4jg2HDR0g9ZrRI=;
        b=MOqXdgZxiFNMyRtkvSDQw/HmLRdgTDtnf9MBv5evNcOZj9pUEF2xAynjNbBEkgdppd
         irIqyRq71URMEScUILphgc6o3eKznGCYDsxVHHlKlR6pWdnYdzJ0vcxY/axcjDDkznOq
         xQo5YDM4EcN1DhQt7Ke5wUDEn2f3VVTV7cp1vXavmV9tZ/VEugitS8ZSGOCo2hNIr8Eh
         KAYW9bCSXxxTpGhepu6PA5a1DS16O6snJ+BLzmnBtZwlli04mS+eFR8qVCKh3a5eYCs/
         G05CooCvYtPCXA4c1dkMdO1g4t7R6qxGkDQ7mMsjDM2DlYyigkl7wtFIYMTbgrUswYDw
         1RrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684822503; x=1687414503;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=41kW5fOWjdzzcQ6HaiOHsjJFnjWCo4jg2HDR0g9ZrRI=;
        b=DhubIkeADPrLxuYKx9/rRV9E/d4D7YCd1OCttDZQMs02qZyukat+FQsKFLXTmhuLHT
         mKf6FjOoj0pWpYI2EHwI85HofIK3II7pJZwg1i+MRgoKcS0K+hRGAkqE6vNPyQisms/h
         Efp2C6FtB068LEKrkVMINg9IUMvHVC1rGa9GA84h9nsP5deKxVerxn9zJ+dI5Ro5nNjT
         wVuwC5AeabcpAcu4mvINtj8twC4vbwryuJ8gwG/BbtGL9ctzSQkI+pO2wBe1vtGEtdq5
         D51JcdmjUhiIHbKe7wFJCiJ3jvmcEBuu5xtLwm4hZkbEZrFRrbIlb0H6PKOMRt2Hap7y
         SHTg==
X-Gm-Message-State: AC+VfDy1H2mBangh1MWImoO9MDqab+NQ6TbYUDF6uBaKWiGVTgmoIzPd
        8c/VptzRfQNsx2XPSpzmmqDn2GCLe3jNHzvYmZ8=
X-Google-Smtp-Source: ACHHUZ64PD85uX6luaXI8qdQcnKqXTHlHQjtSy3xuxOp91fyvKn88CMQ4xNXEwB2/3kBDKT5uA3SgbwBbXnlHXVrdiM=
X-Received: by 2002:adf:f98f:0:b0:306:2713:f7f with SMTP id
 f15-20020adff98f000000b0030627130f7fmr11679495wrr.11.1684822503112; Mon, 22
 May 2023 23:15:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:ffc6:0:b0:30a:37ad:6833 with HTTP; Mon, 22 May 2023
 23:15:02 -0700 (PDT)
Reply-To: maddahhussain10@yahoo.com
From:   Maddah Hussain <abdwabbomaddah91@gmail.com>
Date:   Tue, 23 May 2023 07:15:02 +0100
Message-ID: <CA+Gj+jGi-mbXJ3ZYHX5zFGHh3e-2MTFy3GDGXVpE11H5gSr-_Q@mail.gmail.com>
Subject: Get Back to me (URGENT)
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SCC_BODY_URI_ONLY,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: *  0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was
        *      blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [URIs: again.it]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:42d listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4999]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [maddahhussain10[at]yahoo.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [abdwabbomaddah91[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [abdwabbomaddah91[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.2 SCC_BODY_URI_ONLY No description available.
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Dear,
I had sent you a mail but i don't think you received it that's why am
writing you again.It is important you get back to me as soon as you
can.
Maddah Hussain
