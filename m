Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3418D714F69
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 20:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjE2SgU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 14:36:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjE2SgT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 14:36:19 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4ACBDC
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 11:36:16 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-568900c331aso14316357b3.3
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 11:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685385376; x=1687977376;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xA47Ni5t/7XV0W1xjAwHZ0TOPYS+bs2DngwWSaFoKKY=;
        b=hZGvlES+AP5BxsI8K0JI2bO3HXWre6SmiJlA5rwmhPvJ5UuVmbzraDDfusrZfZ6QGn
         /N80ESTUkdslqQ5FnfvkOzrWyCqdxYMWl/JTwgS+Ps4/7OmEmMd1W5Qa5vw8F4fDwBql
         RNiJPnviRw6ztrEZrXxH2GnZIuaV3t0TfjLtHWETlCWGiLn8DABCui7jfQ8xhC3QsZ/s
         Okm+bz3Bxlgfo3Z4bq3xoinSi55w7svMeWkWvRx1dm50El09it/VqYsuKyyUmwU/MAAI
         EXG8kWiCCbfN2B5153j1br9CtqoXV/qIUMUKRmmr1RvLwWLNL+5UNekV2DbakwV10wlI
         B7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685385376; x=1687977376;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xA47Ni5t/7XV0W1xjAwHZ0TOPYS+bs2DngwWSaFoKKY=;
        b=GJMiQxVr8VUEqPKHNOUOE6Y2DgpEP3VeOWK32SbJfy7hT08el/KZbzvWnKsP8Q5oAu
         RtRjcG2wKUu8JDAYCqd8ipIYCtHuXYHROyjn4n3THnUlZgBSSTmE7SQ7dr6atKpQvIP2
         9tlaHLlCBaEIbqXP3fHRZ75AvlAUwSYKHmnYvL9Wo0u8AVd8lMkLrrfpZ3IeZwABQbOs
         4YhUYlK6sywM53DBA5XKe7sINGPJTG498C2HHYPrHfxBt1gqFdBgXaxPPuoBswyJQn7K
         M/lJMYIbpN30JJMYXs3Touhf1VrLxgumtH3M7sHjxovwztSh/ZL1pajuu+8GTLcEHnoe
         ouKA==
X-Gm-Message-State: AC+VfDzTnCjLB4+qiq8Bwm0mEQDi8vBW+mgg8XVavrWvKsUG2hzpQN5g
        kGQvEqYhwhzAD+/1P01UlsmQKS/F3rLoc62zV+Y=
X-Google-Smtp-Source: ACHHUZ5DQJ6cUrBWAGL9MI8hDglvxwDFBRXufzmqFKilK6RO796D7K8cnh+GmH2Qp6CvhlmvfF7z45E+Jt1UfrkrIW4=
X-Received: by 2002:a0d:ea88:0:b0:565:c8ad:90d3 with SMTP id
 t130-20020a0dea88000000b00565c8ad90d3mr10328629ywe.43.1685385375991; Mon, 29
 May 2023 11:36:15 -0700 (PDT)
MIME-Version: 1.0
Sender: oliviahamilton706@gmail.com
Received: by 2002:a05:7010:8caa:b0:358:1328:55aa with HTTP; Mon, 29 May 2023
 11:36:15 -0700 (PDT)
From:   "Rev.sister Bridget" <mayawillmson@gmail.com>
Date:   Mon, 29 May 2023 18:36:15 +0000
X-Google-Sender-Auth: iNm4AnSIvZiJQXGYOrPLC_ojniA
Message-ID: <CA+k-=v+rVYfD3Ljnad3VhUHxzODkfoFKbb=5yPxF1PshARgDpw@mail.gmail.com>
Subject: hey
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
I'm rev.sister Bridget.
i would like to talk to you
hope you don't mind
