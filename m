Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF6E14AD032
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 05:12:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346787AbiBHEL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 23:11:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346236AbiBHEL4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 23:11:56 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B13C0401EA
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 20:11:55 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id e6so16675301pfc.7
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 20:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=4HWW3srFwPeoeibWEbuFvJKgAXfTYBcpWGvdOE3ZrkM=;
        b=lYKvlhrukwKxmCq0eJSiZhJlAcTJBccadXFJbgAnH6d004s/WccG0zegKMEh80bEmo
         +of6ThRn87c5icBwfpCTNgVNSYsj4deR+g0WDTthArRBO32TkJXAEm/zt6kLcy2i43JG
         icREiJjbOLxH+sFWcAmss9mNbBHXzRpiRxGK/Kgu4YzyKIYZAyoT1vzPKfYKKUNoTFej
         cKyUI3HADjSyS/oB3E4rywaBkh8Z82qYVEwWzKRjnkEKD6gX46PzWYFoxedhnOx5A+DC
         E8Aa3kRf2CZVL4TPVYRDRqK8ATB8+3JFO3ThcTD4oUSgHebxr8xDPjEP6iUicMTBBDuT
         xKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=4HWW3srFwPeoeibWEbuFvJKgAXfTYBcpWGvdOE3ZrkM=;
        b=T+ko8bgCftLgkWNV2wnL7q2tcZ59rC7msiOTFkQzm83TI9CZgqzPvlJgbwme4BJ5i8
         G8chmzsLlOz1ss0v/xcBj2CTjMTn/7c8vPEZMSazMvaMj7GTP0l5YjK8BZ8LSNZZG90k
         u4bjwpfyAdqe2ecW5Ui5vD2gNbxxiDPGHK476TTEI3etMRIz0HhYLMGRFUqMHvqW+Tnf
         0tNR0EALwMEiKEx51m6CYKAhcm18Z+wFte4XAJSjcKgYDKn50IUWAUtlMtGtIhD33iJs
         TmblIsATlJsqa1EKzCxaJoVSZl5Xoq2kZuMQnsr/E0XCm55s1CaGMFG/bx5PQ5K8rnrM
         GDIw==
X-Gm-Message-State: AOAM532u9/Vnkkb3gNTkKgYgGzgTpbp5VMnvoxP/Fd5tHSI3sN/VU9i/
        871Utp+/Jy4IWuOv8whphRTu6NedsnOzcdrvbW4=
X-Google-Smtp-Source: ABdhPJymEWr9pSiI1FVkg3xVN+3t2GZj5mV9kvzUQqg+UEU9B9KiZRVp73XQs9j03kSTTmz6rJcTIrj8IZbQkMWMAHo=
X-Received: by 2002:a63:81c8:: with SMTP id t191mr2041138pgd.223.1644293514579;
 Mon, 07 Feb 2022 20:11:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:178d:0:0:0:0 with HTTP; Mon, 7 Feb 2022 20:11:53
 -0800 (PST)
Reply-To: selassie.abebe@yandex.com
From:   "Mr. Timo Helenius" <juanangelino0001@gmail.com>
Date:   Mon, 7 Feb 2022 20:11:53 -0800
Message-ID: <CAE93Of3pk3nfj05NsjyXdR312ZqdGLDz1gy1LLjnzcdZgfZcBA@mail.gmail.com>
Subject: Revamped Catastrophe
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:443 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [juanangelino0001[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [juanangelino0001[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.4 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
The International Monetary Fund (IMF) Executive Board has approved
immediate grant relief for citizen of 25 IMF's members nation.

This is under the IMF=E2=80=99s revamped Catastrophe Containment and Relief
Trust (CCRT) as part of the Fund=E2=80=99s response to help address the imp=
act
of the COVID-19 pandemic.
Reply to this
Email;selassie.abebe@yandex.com
Best regards and Stay Safe
Mr. Timo Helenius
Copyright @ 2022
