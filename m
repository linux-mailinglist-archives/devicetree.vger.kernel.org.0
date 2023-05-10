Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF4786FDEB9
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 15:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235752AbjEJNj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 09:39:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbjEJNj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 09:39:56 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DDD21718
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 06:39:55 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-55a6efe95c9so106901007b3.1
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 06:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683725994; x=1686317994;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CmlwvXEoimVTfsyyyYai0GQlqo3zzXGhdH5Gfvmx5TY=;
        b=QA3o0/TmXn9qhFkw/UZaEuxUlT4oQ+TUho9Ec1tIN+nuaJskbDWUzL8a49hjxFFJWe
         KPWusIjcPmkPFH3l7vwNmYTS/u+h+PmCr41ixnLUFX18N1JT1FuX5MvS9anYT5a680dY
         3Z90f9kJjZ/E1iVlm5weDAVYEgBK39TdNJIWhNCO0uO0x57ABNOvwuIEto/37Ad8aBzj
         I6aV4jaqcRgJTYF97mgJGnmuQ/nturZ8qZtePbAz/X6u2lkxlMfku4w/LTukf+rdu/da
         N16DXDEhRPWy6olUxHLOe8KHaHBXUTW2CvGqwinwP2HovQauOZDAjLOBI6NugEzVetli
         Uf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683725994; x=1686317994;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CmlwvXEoimVTfsyyyYai0GQlqo3zzXGhdH5Gfvmx5TY=;
        b=VmRKDLomLFTNNJJ17ZcMiO1zih8X7GlrqY2iXcxXpmZ9K5wGZdwqQopTAt6k6KM015
         gLlC9f15VdbR3fM4FJH34Z4ktUq9ylpcFntyw4140Ebavi/S9DZ738kHlxLCkeJlzGgk
         9vPxfQtavPFciwf0QitgGdv9D1QX3pgIKlW4V5FP6uU57R0O9qK7PbfHGFWdJ9d0zUNS
         hrGjWoZ3lZzMLa5Wx7yrNHFj1PNmPcYRKwR+5Fwf+s5SaZFGKPbSfP/6Bsq/D7rVRESa
         05zd1n5SPuDlDbCrrsIfPYrdux4qZUzfvVm1lbi4JW5Qj7RxbllDtPopozqIGvvTwWqI
         6+PQ==
X-Gm-Message-State: AC+VfDzJt9vOxWQQJRoW6kN3goxjm+bQftpvkZBxJbSZGuaqfKf/0CFH
        R3EGv5w2HzodEBW7/rPYZWsfJpEvIoCHUE2JR6s=
X-Google-Smtp-Source: ACHHUZ41zS9cDm/p/jo6L/juu01I40gpuWz4TxQFGm9m+Ds911osouhqUPqcTJH2YS06P5bUcGWui67CdrVpNijZmTo=
X-Received: by 2002:a0d:d516:0:b0:55a:f428:e8ea with SMTP id
 x22-20020a0dd516000000b0055af428e8eamr19071596ywd.41.1683725994056; Wed, 10
 May 2023 06:39:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:19d6:b0:4c8:31f6:3644 with HTTP; Wed, 10 May 2023
 06:39:53 -0700 (PDT)
Reply-To: contact.ninacoulibaly@inbox.eu
From:   nina coulibaly <coulinina15@gmail.com>
Date:   Wed, 10 May 2023 06:39:53 -0700
Message-ID: <CANZxeNM3s+5Pm_9SXbP1hM+NE8c852jFd=6dfOEoKHSRKeWVYg@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

Please grant me the permission to share important discussion with you.
I am looking forward to hearing from you at your earliest convenience.

Best Regards.

Mrs. Nina Coulibaly
