Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C40D072006C
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 13:30:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234832AbjFBLar (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 07:30:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233860AbjFBLaq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 07:30:46 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A02A218D
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 04:30:45 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6af873d1d8bso1493992a34.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 04:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685705445; x=1688297445;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N3tQa/xAjjFjMbYTIPvabJVdNLC/DkLFMMTZCH3qWNU=;
        b=eu/8L6FEJyCnomQkO9MfzOs1itqP5rZNTr/8Tp1Z0jIfUk2foEP2a5s+P4i5p5pPoB
         HUVnG/7kA9MJUzRUT0tV8mT3PW3cmNtD3PZZkx681tXOgYO9bFxovJ5SzIEYC0tld35x
         n2JCqw2Ig9aIkEc8AaZSEEvZvIDLJ6nHE6jcvzV4u0BzGSHlIxjH/0t93XpG+1on0ntE
         9IPe7YZu/Zi5lZoNIKhQ8AGAxOfl3Q9ELKqMPLuYLwqRqAELxox+FIZsR9nwOgWM2n6M
         Vg47qfzSSn15OjsbLki0T9QANN9CVcKbsEG4x9VQn1kFkqu0s2x7P+HCbT1WjTufGV/4
         YOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685705445; x=1688297445;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N3tQa/xAjjFjMbYTIPvabJVdNLC/DkLFMMTZCH3qWNU=;
        b=jKjTE0ifG3TJdZ7SI4sl5srOQ1i2s3fpTqzyT/60VJuxcilzlo6d3Z6TS4Cms828sP
         iQyf7Ew+SdpF7yt+bM0YPzrp0d3yBwsutFv02OdaWaABg+Kv9UJyiNNWKFYGhzVLNR3e
         SA9dqnm0gFuEMKJS9Amc6sXRPAW8MetrEY2FKXTviKMqdQaSvzS/atJ8icys19EAjBg5
         /e5UGDuPe+u7duXCE21obMvRjlGAtBVbCFzTHD2P6qT5cPRIwXat45TDqADtgE3HDds1
         lnDT4NKCmlAcL80LUt9++2KcCxynNdd5S6bAWYRNWHxr0I2adWUtdcj0p5IRAjNJ5/E5
         WF4Q==
X-Gm-Message-State: AC+VfDz/Kh1k9HgXifiOr/aF3c1EybBRjhfWP9umNc4zZQWWaaDmhBms
        uIB1R7FPpNb8Xs2x2ujJSIA6N9UgcW7ur1BVJbk=
X-Google-Smtp-Source: ACHHUZ5bnEkYkQvDbtYgf3PHqO2aUWLOzfEnyUNaWd4OmZBSRLxwI8uehBL9rCaqJYTtVmRlZpNzRUMrMKrQRV/FR4s=
X-Received: by 2002:a05:6358:4e8a:b0:127:de76:9adf with SMTP id
 ce10-20020a0563584e8a00b00127de769adfmr2955152rwb.9.1685705444535; Fri, 02
 Jun 2023 04:30:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:4583:b0:62:6069:5fa8 with HTTP; Fri, 2 Jun 2023
 04:30:43 -0700 (PDT)
Reply-To: elenatudorie987@gmail.com
From:   Elena Tudorie <bestwinne@gmail.com>
Date:   Fri, 2 Jun 2023 11:30:43 +0000
Message-ID: <CAGg1EpQV5G+EUJnjuCdBXDu9UOPRB1TtLo-W6mRORy52z14cjQ@mail.gmail.com>
Subject: Greetings
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am Ms Elena Tudorie, I have a important  business  to discuss with you,
Thanks for your time and  Attention.
Regards.
Mrs.Elena Tudorie
