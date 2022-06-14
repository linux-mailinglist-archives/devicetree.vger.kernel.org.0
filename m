Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D85C754B186
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 14:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237483AbiFNMvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 08:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230490AbiFNMvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 08:51:39 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 431903205C
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 05:51:38 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id bd16so3393544oib.6
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 05:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=4mmDZ1uRPZfOmm/rnLqxwzYEdjUGRLpeFzpEL+z52QM=;
        b=Yr3JN+DRlAjmJoic8o/JZg+KCIYQ87leNmXoeyiXZKE91M0B+KL72I1Fk91oL0CLUq
         qto7E+8/ITjvZTdE0SJIe9tkY+j0mIz+/7IVh6qAAyYXc2mw9VW09ypeJM0UO4QNFltz
         CdTwdDjH+jJbdcm8ITY9mzRz/O46dWC8RYgivb4SfmfD+7S+aHtxLe7/nMZgFt7+M7yb
         /+L+U8kZIpVH8IQxMY0/gH9tvtB5HE3gSQ1zb/CBSf5jscqZ4Y2AtBPdGKlCdxozJaDT
         QxboTiXqKBrw3Sdr2hg17rjsDe9tM7F7WFmIyCHn5lkpSuUPKK43kN1iqWo/pgb2DRy1
         bBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4mmDZ1uRPZfOmm/rnLqxwzYEdjUGRLpeFzpEL+z52QM=;
        b=rr6GNhRgIrUZV6x9yvjv2TA0pdS8BH/8CR9cixXYX6PBvFR3P64gNgrP8Bo31zGZ4K
         sAqaLLko0MEqtiMpCE4d41zVvaYXz1pzaWUVEw7sEefAYN5o3kiDOGGdrgblsC97ZElV
         dPXeLwO/143XcK0uYIMi8vgTez+h1bxm+UTsdkiZXMCifHcTtokPPZpWaeSCVxWqjAGg
         xFtAi9hSCztnQDqyoaTSAskQZGfAccrk69UJuEywM/S1XjhnmIKxU0/LhrPIn2dd3P6X
         wpSTk1iv1hbvzu3ZWfpIa3k8VrTFQvgfQiywlzkfKmdEISp8K8Qkb7CHRELoGJahCYPq
         pMCg==
X-Gm-Message-State: AOAM531HOPZ3IiXGRPLSj1Y2hylTL+WlZhBxw8V/pVRiyzAvnfL+K8ne
        milSwY2aW8B3q/JVAD4qd8YGhasIOvBR/ZecO84=
X-Google-Smtp-Source: ABdhPJzIqfDJvJDtrdXolLfJi1xELd11Agdl9Db2mTAbhuVg6qZGyjlUPXy9D8ImXuaTpSm+jqg8ZnauHZvnivF7EuM=
X-Received: by 2002:a54:4f9a:0:b0:32e:41bb:c8ab with SMTP id
 g26-20020a544f9a000000b0032e41bbc8abmr2079581oiy.298.1655211097578; Tue, 14
 Jun 2022 05:51:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:6f95:b0:a5:7d3a:7129 with HTTP; Tue, 14 Jun 2022
 05:51:37 -0700 (PDT)
From:   Donald Douglas <ddouglasng@gmail.com>
Date:   Tue, 14 Jun 2022 15:51:37 +0300
Message-ID: <CALVR28HMmdWLkOVr=+oTro4UymvbDYqKJsLfqY4Di3WDHwfREg@mail.gmail.com>
Subject: Confirm Receipt
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
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
Donald Douglas,
For,
Daniel Affum.
Reply to:danielaffum005@yahoo.com
