Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95EF165BD51
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 10:41:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230467AbjACJlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 04:41:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236916AbjACJlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 04:41:03 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94803DF70
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 01:41:01 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so20133415wmb.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 01:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bsv6sMQmC8jnqT/6rqRjPIfpOBvg88+WOYXR6wIOiQA=;
        b=NqoNCG5BpGi3QbcQQPE0AWyvUVTk2dUs1idVmFGKQRzlSZDkM+bi6MStfDDxE1eI55
         066W35ebviz1l2xT/qLYX/p2HhcuDgr33q5YkofNZHaqe/0iCq5DKKuaGI0NLwo1SBOb
         Q/OWbuaHZ9U1efcARF+k/of0E5Z4qj74t1ZH/hK4BrVQaz6RAgQd5i9Jyz4WCOxgUyiy
         VRelPQuzwggQU84VwJO83c5m8r8fqNRVd8ugx2PpxgQI7DbWwQjafhN/tpbW+Hd5faw7
         RY/gq7aYcKetmdCg3UglNd0h1p1rZikAqtf79kDmcJcvLawf7Y28pV5CjxekI32qNA5J
         t1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bsv6sMQmC8jnqT/6rqRjPIfpOBvg88+WOYXR6wIOiQA=;
        b=xGSCFaYUH+/HSjPz/WHMum1qppop/cs3R8apZ/c1jZg3LRi8n/iKHrJt3iGQh3HQs7
         cHO4PjJgrey/dTZpk3rw71bd6eouW3jcOOwi4dinG70qT6SQIO9OHaODo9gOPR/xI0VD
         Q2DObC8t3y4o72xvXgtBuHOiUUWyCVBotkaciylZee/9LBkfcL7SRW1f1i9v5RDnyD26
         +VAENTY8df9uLh4O2ceHWlenYI19R+jQyYkzhxQ9GaYRuQNXYfbCqPFCytH7KBpPYMaP
         QcqS10p++h0g0YqJ3a54I/0JdivIKvMmk5Ozx57NNTUK3FnoXKvUeHwMmjeY5oKE9xIt
         GZuw==
X-Gm-Message-State: AFqh2krl6F0q+CGkKofxh1i33C7qCaF3H18zFufvFVwLUPD9+JiZqDxc
        Zux9GvNIn2jInA0WatTVB2VngejIVvW1uCgHl1A=
X-Google-Smtp-Source: AMrXdXvaqNfWBb8PVX98unPgDOSY3KBDkV6qBsN13pSGdOd/TFvu8yAY16Aoo0CwXWfHqkBGtItGtl9F6LVNTZs/HsU=
X-Received: by 2002:a7b:c358:0:b0:3cf:87c6:890b with SMTP id
 l24-20020a7bc358000000b003cf87c6890bmr3055926wmj.194.1672738859897; Tue, 03
 Jan 2023 01:40:59 -0800 (PST)
MIME-Version: 1.0
Sender: moubely@gmail.com
Received: by 2002:adf:d1ec:0:0:0:0:0 with HTTP; Tue, 3 Jan 2023 01:40:59 -0800 (PST)
From:   Aisha Al-Gaddafi <aishaalgaddafi112@gmail.com>
Date:   Tue, 3 Jan 2023 10:40:59 +0100
X-Google-Sender-Auth: OAEtmrYuHAYHfTbfjlYtD4cIOPw
Message-ID: <CA+urYODgsQhbpQ2-e1o0Rg4_C6Fh6y+YgfZ_kHRh0UGNF9RESQ@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        MILLION_HUNDRED,MILLION_USD,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear,

I am sorry to encroach into your privacy in this manner, There is
absolutely going to be a great doubt and distrust in your heart in
respect of this email, coupled with the fact that so many individuals
have taken possession of the Internet to facilitate their nefarious
deeds, thereby making it extremely difficult for genuine and
legitimate business class persons to get attention and recognition.

I am seeking your assistance for the transfer of Twenty Seven Million
Five Hundred Thousand United State Dollars ($27.500.000.00 ) to your
account for private investment purpose.

I look forward to your response.
Mrs. Aisha Al-Gaddafi.
