Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE6DC4D2873
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 06:30:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiCIFbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 00:31:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiCIFbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 00:31:01 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB1B23DA6F
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 21:30:03 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id k2so1636490oia.2
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 21:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=MEM0IMV7SGUt9oVXEqD2uSUwzrwKHx5tTmTkQXb22zio016wXjfT3eAMxZtL5Y916r
         zcBVpRYyr4S2umCMAwMVE0RquWQP3ZtT8PDkAy1tXWZ0ekPccHIA4yAAhj6z2ue+Lujy
         AdDJzXCwExjur4t5e1Dkw/cmq0LFHMgARLPKPTWB7oMj6rcul0ougJ0qAV8o9hU9X9RF
         4+LNyl5qjJaHd6ixDnmDiEE4GgcGhqVGKHPqiOYZ/WgbUC7gcnQfMDFnALtfob7H3n/R
         Ag7AfRf9lBDi+1NRhXuvuxVp/JvU+dWV+MMkabfaDPL+C4HbiIfhB7lWB8EklqhYoyjK
         iitw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=NI2l+M7I6pvXIIsUAyhDSj+bprihAjA7Gqbl4aBjKBvZ85BlTmj0BSb05ybNuSHA+y
         KXw4d1enDG7uvWcDMMckzKawCVxmtHYymqB9TIgNgJdfAlqUOUM1Tm06GJT5XzATtYer
         wud7JayIXcJ7yCoWy6olBwbvv77vkKW+Kzuhf4H0ILFh5vQ48uHxIyPQI5yCRpp4QZkf
         xvyR6GSRtYeb/pLlzWOe5/srzZhkQFuePCx0ZTlvvK3LlI7zR2ivsufR3x3DXhNqVs3w
         4bM4n3dMNdC2UgOJzHd7hapA/w+NnZNxNBkcxfrnacQiXjMxnfaGH/pyCJqTYrG5I60l
         4f0Q==
X-Gm-Message-State: AOAM531LiEzp/Yjo4C3Th50jC6zU6bZf9AKNj3Pi0SYivAV4eIWiQrvX
        LtijBWK+wbttievRIG1OTInADqb4pPCkyvY7xsU=
X-Google-Smtp-Source: ABdhPJxLSRe34c9iiC1ogZQXpzsKoRRPMZTh5sMBGT6qBWjqLNwX6pbDj4XwyzFEcYNm2i0VmhG9qHzNh8tV6la+aTI=
X-Received: by 2002:a05:6808:1391:b0:2d9:a01a:4b9a with SMTP id
 c17-20020a056808139100b002d9a01a4b9amr4924987oiw.193.1646803802855; Tue, 08
 Mar 2022 21:30:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6830:4027:0:0:0:0 with HTTP; Tue, 8 Mar 2022 21:30:02
 -0800 (PST)
Reply-To: avamedicinemed3@gmail.com
From:   Dr Ava Smith <bonarikan@gmail.com>
Date:   Tue, 8 Mar 2022 21:30:02 -0800
Message-ID: <CA+KHXtjX3_7239EAbBEPnKz+qOt6NLUqRTST7UbTcBW0aFC-qQ@mail.gmail.com>
Subject: From Dr Ava Smith from United States
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_40,DKIM_SIGNED,
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

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
