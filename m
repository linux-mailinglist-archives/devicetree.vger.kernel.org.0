Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85AA677EFB7
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 06:04:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236474AbjHQEDz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 00:03:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347961AbjHQEDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 00:03:55 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02523272B
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 21:03:53 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a1ebb85f99so6455390b6e.2
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 21:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692245032; x=1692849832;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gb4qAVlMN/V48c3tDnit9Qdh+68rSKImmu7s/ky4OWc=;
        b=KXJ+Jglrdeii0HMIk1gDSKLVjNYezHWgC+holYgqB4hPjXlw2AcaAIGJsjRNwjBbii
         72uMHRbkRozfrt1Mv/z0ffgHbDj05us4zzynEojmnEmYugWtVP+x3NM0L1a5+cjPFr2b
         Y/zASNH7n/LrWeu1UsXrKGUoeZ9sqe+tNM8pO0SeIkqfH8pKzq6WmAqlV4YEKpJM9Ved
         lGxiT7DdRNr4uR7Sc0jGvBrWSQu9Udt20X82xe4wO5GBZRxVliNyAUcZG+4oaBsSHJUD
         JECUGtT50Nqf7Iv/R6OOjfaEy4zJZk2fZzo+zF5tCx9AQokg/xlrFMKiZ8L5XQxyhbQi
         Gz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692245032; x=1692849832;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gb4qAVlMN/V48c3tDnit9Qdh+68rSKImmu7s/ky4OWc=;
        b=A5sJuK7B3GA0mZDYplUJfM0OrUrwczb8VfOxNTkzh4oM3VvAtRUMCZ2EWSNWgeoDOf
         g/RPkcg947FpGoGnqx/K7+VZ7WVpHJMjZxhZvZnmszv/RkmFz8RarBh9aVj+Sl6LWzjX
         PXyAcEvKud1zdvn9N7JtpXrICIqGyxwnMh5NAQoouD+AOnKmJSJrFumv2a7sfqlwUqz4
         DMHGBzUYat4xG9WLnHHhd+oI0clrh1Yooj6L+v7zjBqcXZ/jztugIPGRiqzoC3Rpcb8S
         h6gXJ/Qsq6kK+SBafgoei5HWI5PJwhQHKvKH2ypSwBtQMYSJpwmqiP/I4F5+KvJ6gOdI
         WXvg==
X-Gm-Message-State: AOJu0Yzrfs94SqimPFxlWHsk1oxNk1aDXJqrJ0u5UJ9Fnpg3bQMu/NDN
        TUeZLWpp0VDM+fWwUSKljUqL65uzeQLY1skIE7c=
X-Google-Smtp-Source: AGHT+IFti9p+fVZFpmO4+KuCfQiZ8sQG6xP4TAavNRah3XLt4v85oUN4CRtLviei1b5GkQkcC8BUapyZbczONmt1n/c=
X-Received: by 2002:a05:6808:1396:b0:3a3:1424:7258 with SMTP id
 c22-20020a056808139600b003a314247258mr5172540oiw.3.1692245032268; Wed, 16 Aug
 2023 21:03:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:d099:b0:133:91d:bed5 with HTTP; Wed, 16 Aug 2023
 21:03:51 -0700 (PDT)
Reply-To: privateemail01112@gmail.com
From:   KEIN BRIGGS <privateemailjsuee@gmail.com>
Date:   Wed, 16 Aug 2023 21:03:51 -0700
Message-ID: <CAGgyiOqKoO1=AAy17gH1J8BYR+jMRMmci-t6rEjtDUOGSF2fpg@mail.gmail.com>
Subject: Your attention please!!
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Your attention please!

My efforts to reaching you many times always not through.

Please may you kindly let me know if you are still using this email
address as my previous messages to you were not responded to.

I await hearing from you once more if my previous messages were not received.
Reach me via my email: privateemail01112@gmail.com

My regards,
Kein Briggs.
