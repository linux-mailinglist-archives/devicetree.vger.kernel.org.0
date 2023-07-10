Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07FDC74D94F
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 16:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbjGJOs5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 10:48:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231179AbjGJOso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 10:48:44 -0400
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 015F8C3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 07:48:43 -0700 (PDT)
Received: by mail-vs1-xe36.google.com with SMTP id ada2fe7eead31-440b9d60606so1701918137.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 07:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689000523; x=1691592523;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/krrOzf32PMDRBi/P9qe9m671OONK8NSr+9AstJjJkE=;
        b=Gg0zJm7uCrk2hlVWk1fa0OK7phJ/pnRnzyaqdvmftwavdRNvroi172kwYB/6xp5+FU
         ovuUWExv/gWEAcEQiTNkoJdej0d3EC6bFH+K9NwpPQeUMrxA5txuOB+HdYeYVuMesiFn
         vSOSl4JCK3Yn7bu0CxC3YFjdiaQKDcFVVg1htnUdbsVwMdOEzLg6495fwKjJvFe/TQ6V
         nV5HfN9XwtDwvNrlbJEUkecIZV1MvhQxXazTtHO2KfxdcdV/BRMtelSKjwrGYQuGiUnL
         VB9u6izZxYfLagk8L+038RIqakUfkUlVRKXwa2kH9FJnUE18wfQIs+5z7bj/XSvzsrAS
         6Y4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689000523; x=1691592523;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/krrOzf32PMDRBi/P9qe9m671OONK8NSr+9AstJjJkE=;
        b=gZXhmDS4VSewTJjuo7GtnmvdKAe+/TEAgwJHNIlButriBQrObDJJop1kjP7eYhnKna
         8zVTcLdCV/RMtmOhgne9YUqbdHnXOUYcoxBo8VRTPOkJPrfMyfbAtyn3QkOSM1HdUNs8
         XL8GaR1Qp4/Wfc5qaLS4pxcbkPTIwK6ok0jKlFoJqOavEKutflV7I/aLpV6GSBaPLVJn
         aw+PngJzAVFCk3Z5vyCt+FTxqFE0TQnXXqsy0M8IWvxPG5m9j+l4ZjJDpyrELf19aCwf
         cmES7dQssnf1V5QEidyHBZu6b6N+jy03XuCnzpZFJEhPtGt/jtl+XC5skG86LeRyXhm7
         vU7A==
X-Gm-Message-State: ABy/qLYI+1X96Rzwwvk+urZ2rggMv+mqUHoyoWp3PM1UPXJzQnzpYHRI
        jLvHCQCHUT2oJpZkZCPRDo37bGXQU2jHEn3f9uM=
X-Google-Smtp-Source: APBJJlGJfMaCiHWzG76B6LUBb8Ak/FT1qbB9aCQVFduoZHY/CgjHFKBGTcs2iV+AtG/HjftIjtik1HMvZZTO46pAXO8=
X-Received: by 2002:a67:f84c:0:b0:443:5809:ec21 with SMTP id
 b12-20020a67f84c000000b004435809ec21mr6021851vsp.17.1689000522880; Mon, 10
 Jul 2023 07:48:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:a422:0:b0:3e9:f5ef:54a0 with HTTP; Mon, 10 Jul 2023
 07:48:40 -0700 (PDT)
Reply-To: avamedicinemed3@gmail.com
From:   Dr Ava Smith <abudumimi920@gmail.com>
Date:   Mon, 10 Jul 2023 16:48:40 +0200
Message-ID: <CAFNbOJSWtDZhq-O6uDC7LkS=nZHzow07U7GaWj7zWfR85WCHxw@mail.gmail.com>
Subject: From Dr Ava Smith from United States
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear
My name is Dr Ava Smith,a medical doctor from United States.
I have Dual citizenship which is English and French.
I will share pictures and more details about me as soon as i get
a response from you
Thanks
Ava
