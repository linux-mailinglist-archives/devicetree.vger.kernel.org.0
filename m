Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEAD452C5D9
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 00:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiERWCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 18:02:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbiERWBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 18:01:49 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1348C17E1A
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 14:50:53 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id z126so3019112qkb.2
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 14:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=675CvuSp++zNLeIUZybBsP51nvc83dY+2bSGb3FYErQ=;
        b=IpvzYC5pcIGvtds/3PwlfXeQueb7dzZoQfrTDI8pqDf/efxw0ZLiR5IPj+HHSD7uYt
         ZrDK/tu0XZN623VWnyt5usXiFOO0NQjy8GQDdComHUTKl8RXYneinZm2/Yakdst1WufV
         OAsFZpgp+jr6fgb0NNh24ymxJv7rgZIcTBrXQIpGywmO1bGQqsa5G0CyIjYyMjuj16df
         qtCHRyohmcIzsCbbKyVj4g0uv74JjWz4I43zHtfQJt1g5d1qTlu38zyOUvYfGHNhW80y
         bToehgxBPuwsB5WPsG94CImJ0RcjTY/d+yXohLvPhofMfGy5aU8Aqz0plOFj6cCwotBU
         xrZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=675CvuSp++zNLeIUZybBsP51nvc83dY+2bSGb3FYErQ=;
        b=FVxS/ZmuWn8X2auXb8Z3xkRK3DuLjb73Wk22fF3fWucywEC7cOHlR14iS7JUud30CO
         61kWgaFkymkVXQMYcV4oOeR7RyZAPWFObQuk7K0GNmE3X7k0wpTWDge6VYEqgerCGCDx
         80ty+OW5Q7IKPJAgs3cpHg6VwOvCJgxemew1e8+VYrOgaoYSgrk1HMz4mXibP/x4PHo3
         gibXIedlGlR3QRHetdt9TeQeVams9b2cp9D2TwNPZ0dYhZxap06Hz9iZhQUmDAKvBG+g
         cyyVH2+KgQQUA/iMOgb5M74cOJEa+6y1H2Rj1D3zsadHnSGSFf1B/LJSVFNqAAuZIC/7
         Be8w==
X-Gm-Message-State: AOAM531On4rjKQhZYRUiiGmayPL1Mk+El4+edbNIoMi8Nxeaz7gxfrzM
        xtM60zn2NjmMnWzAq8CBIVeF8CUGHpY0NwzCVd8=
X-Google-Smtp-Source: ABdhPJyodsPG6UkIlbNopEZrYOEiEZ7/6/rQZqhkip1EYUzO5OMpC4hk6J/uWybTYzbterQqKaJxn0R0lwjv7lG3Hyc=
X-Received: by 2002:a05:620a:4108:b0:6a0:3966:d30 with SMTP id
 j8-20020a05620a410800b006a039660d30mr1184304qko.672.1652910653066; Wed, 18
 May 2022 14:50:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:5cc1:0:0:0:0:0 with HTTP; Wed, 18 May 2022 14:50:52
 -0700 (PDT)
Reply-To: tonywenn@asia.com
From:   Tony Wen <thompsonmiller942@gmail.com>
Date:   Wed, 18 May 2022 17:50:52 -0400
Message-ID: <CAN7gJ1Q2ZLHr5NkKU6AxYe2SfRS+=1qj+1rw6h1nkxT=Z7Zjmw@mail.gmail.com>
Subject: work
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:732 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4908]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [thompsonmiller942[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [thompsonmiller942[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
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

Can you work with me?
