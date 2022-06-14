Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFCD354B06A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 14:21:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232988AbiFNMTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 08:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356836AbiFNMQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 08:16:03 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C362214D13
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 05:16:02 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 111-20020a9d0378000000b0060c2db66d44so6418055otv.6
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 05:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=lBFrwc11MgcaK75qf3EwNhKoIfwLYz4Dn7scEjO7Hwc=;
        b=E5pPy5OMj7c9lRB3t/wArmPsQFCGfyhQwbPVvUH3cVRFM9CrbldVGLEt6RAZXJsw1E
         +/iyImeLb6EwzHDoSQRRhklH2582ycE16IVmfMTQcW2tknldNlTOx2Lk7wiPtcf1FtPe
         F48yc3wQU8iM2d/840KV3pQ5n99au55F9AI6lQ4QBn+Yg72ufuymVfC1SiykVKQ5DVQa
         BEFxcq6I2z4RdedrJcx1d5Eyjux7A/AMGaQ4DtsflAwGvZkyjiMR16kqXUnzGlVkJNDa
         /LJeIqwKcC7y0WS0aXBXWVEs7m84xVDmN4e0mF7/1QTN/tdjAnsyTbnhI6j4+URTcFlh
         ek4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lBFrwc11MgcaK75qf3EwNhKoIfwLYz4Dn7scEjO7Hwc=;
        b=aqmtItaK87A+hESIF4DoiAlUoQDaulypxHDZ+7x8+wtcpPwuXrn3Rqq2bWe/IwF0of
         76Zw59lFegr1bZie/gMULYCNb+fRy0NRKdOZ6/ONdrtO60BYbHHGRMrSieKAX0fLLyjc
         7ozzWoDDZk/0CCga3wHRw2LFTl5TUaVsH1SyDJoKJBjLx/FjUPG1ek/NGK8z4/lzuua7
         WUI0e4t0BnY6KvW2GEvriIofMVWDHHBlUNR1vo6ZAkruu5LztmU/6uHSZ0kD4w2weBpN
         dXIOY/3AY24if3vmGeLtL7rpik35VpK1imSYr18idbl8PMwqDkD1lJOzQwQu1o0mZK/6
         g1Lg==
X-Gm-Message-State: AOAM5334mi1qqcz6S9B71TCMuR8/cqUv82UlRH4RVt5gNIvA/XrVNzye
        VQgIjUeWHkunVTuHZXHlNyK/B6okme4TRrTIcqM=
X-Google-Smtp-Source: ABdhPJwQ1yANvEq6GRvBP8LeIMw0C56QcDG+/oRSXGLX5e/UQ2xLY9pvZWPNum4r2g+oC29L9Qi9iiYO3BnitEB7CzM=
X-Received: by 2002:a9d:53cb:0:b0:60c:1f3b:7e9f with SMTP id
 i11-20020a9d53cb000000b0060c1f3b7e9fmr1926272oth.110.1655208962104; Tue, 14
 Jun 2022 05:16:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:c46:0:b0:42d:ab20:ed24 with HTTP; Tue, 14 Jun 2022
 05:16:01 -0700 (PDT)
From:   Daniel Affum <danielaffum05@gmail.com>
Date:   Tue, 14 Jun 2022 15:16:01 +0300
Message-ID: <CAPkju_PtKaBbpwvFA=UCuNzKiUMm2YviEVJub46=Ejz1kyyQQw@mail.gmail.com>
Subject: Confirm Receipt
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear,

I am Daniel Affum a retired civil servant i have a  business to
discuss with you from the Eastern part of Africa aimed at agreed
percentage upon your acceptance of my hand in business and friendship.
Kindly respond to me if you are interested to partner with me for an
update.Very important.

Yours Sincerely,
Daniel Affum.
Reply to:danielaffum005@yahoo.com
