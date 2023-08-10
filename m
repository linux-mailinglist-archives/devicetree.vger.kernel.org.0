Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF8F77739E
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 11:03:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231629AbjHJJDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 05:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232533AbjHJJDC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 05:03:02 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EF632123
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 02:03:00 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9b9f0387dso10122661fa.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 02:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691658178; x=1692262978;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iol3jaxrzuORdJBb2/hbufIyhmncgMYWqRL3cinA+2A=;
        b=WwxE4LmDpHQOrcGdJGXxWk39zrqsGRxYc7nTKhPhGRfMglurefRR1ELhvq0a3bcxVN
         aq5UWeITkhL5Rvmr4n21fNuJtChS7TqWYu2+yQ1YRvgRd4hNWUrt8D+iHqlX86rqW5YQ
         dH+vQoTSHwA8ryWGS2PgyMOEj27Af7TtZcz/hkkmMyBUML1k7bR79pB0a26PIO6Jw27I
         Ge+hXwE/J78g4+O9kfR57Du4qWed3oAWcPA3wdyMDiJOcZrOSkjmeA+V2S2gcr6GNmaQ
         6fP7ke4l9QW0NyYO4s3mD0lQnFOTjM1/O0sN9pS1vTEbnwPEoSu5FuIhqA8uSAmvsJ5P
         6TTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691658178; x=1692262978;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iol3jaxrzuORdJBb2/hbufIyhmncgMYWqRL3cinA+2A=;
        b=Z7SdczeHSMsRVte39e2EVVQAoGX/ZonhpqJ6lNe5qsNQ/hsMY3fBkSS6tsuP/M/tXe
         V541HrlmNkk3rsMIr51M1V/20PBhm3+PVU5Wl6fP3xeOs1SY1wS+og0xXxgkL5JyrHnM
         m/+pdk4m1vjvTwi7zWaKFFWKsywGdgFs76dlArEYuawZctu1vhEXUTd+agvDhnlhRveG
         qMZRugZIpbKhPrnWdwHMJUsY7/e1cf+BDeWNsO3tQH6whSWvIV3LDL6ImNJkzWR0qfHY
         QkHaWZ7/L1XjXz/gvcRFAZDeZMqkAYiJyKV2mNxI/FRR4U8w079F1xysjYvv7q+6W1a4
         iPEA==
X-Gm-Message-State: AOJu0Yy2AOTEcqc0zsMv6OH8qH4jCjzJA258HbnItMDhZpNbSKrJ6b1e
        YCjAGIDsHFAgLClF9LPndFuKY/oOSYdIPKsPVl0=
X-Google-Smtp-Source: AGHT+IEw/DjNFJ37xedT4ASIvVDrro14zdhiOBhQwowOpPa762f2PoyTLL75fV6Mpkx51SiWAXGbWcxNh4k+cw9M85Y=
X-Received: by 2002:a2e:7a02:0:b0:2b9:da28:c508 with SMTP id
 v2-20020a2e7a02000000b002b9da28c508mr1341243ljc.31.1691658178249; Thu, 10 Aug
 2023 02:02:58 -0700 (PDT)
MIME-Version: 1.0
Sender: haralinda549@gmail.com
Received: by 2002:a05:6022:a2c2:b0:44:8037:281 with HTTP; Thu, 10 Aug 2023
 02:02:57 -0700 (PDT)
From:   "Mrs. Angela Juanni Marcus" <juanniangela@gmail.com>
Date:   Thu, 10 Aug 2023 02:02:57 -0700
X-Google-Sender-Auth: C72gNtKwOGFrIKSy-SSxEpSgLxA
Message-ID: <CALqZD=1fqC5BURb__PSn1sG4uODGSViPLD1=wckSgSAJD2b5Og@mail.gmail.com>
Subject: RESPOND FOR MORE INFORMATION....
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        SUBJ_ALL_CAPS,T_HK_NAME_FM_MR_MRS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, good good morning from here, my name is Mrs. Angela Juanni Marcus,
can i have a private discussion with you? it is very important to me,
please respond for more details.
