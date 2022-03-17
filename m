Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 004804DC148
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 09:32:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230302AbiCQIdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 04:33:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbiCQIdO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 04:33:14 -0400
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 280AC19E395
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 01:31:58 -0700 (PDT)
Received: by mail-vk1-xa30.google.com with SMTP id bk1so2443549vkb.5
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
        b=nQX9cJ/idP0uZPJ0YxuEjxaxAiNmspg1GnXw9ocoDK8XBTu2auooJptrQzgfIvRZlB
         9aZDwzdujrHysUTPPA/JUtEsGxYQUrlMz0av4pCucyLW66RkXZuixMTlM/FNwCSvwhUH
         dtcwpnfe4RFJbZ1miJHtwvkct7NK9UPr30pUYBfk5cfHlEQUQrjPwDcOr7j8DlPcf/GZ
         Am2/d2od1ki2+sbFOR2xSJzsFGoVwAt2cDRc2xM/4hxa3v++XRMdcA4FjXYWs+zcHug0
         EMjrFZXEbPrQ9zNRfeM9PHUr/CLLtvqGGZ2urEv9eysyVnL47sSywgrDzOu+Z3LaYtIg
         KOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
        b=uyha00O6oeqxz3h/6efGYt0rhYV/2EXWMaR8dUlNLSygB4yFWBdGHP+ru4+iUzclBc
         W7TRV8LT0MYKv8m++Wl1g3pCwZY14JyyN/ZVL6J322xKgo/mnQexOcoPJrQ3iW/BBfZR
         PcvTXu41R0MnGNg7X6EZBhL5OLLq1w27xaebahTypewlmQMACiddqCt+Z0dnKZNLKnyY
         b8TDGPKupO9ZnENOD0eH0YR/VQpzdiXXmcz5Gb3aBUfJSUO5yJ02fUIv4uxXdDZOdkKz
         lq1d/eGjESYJtUEZp1/xQMd2UD5fqL/r2WoaixeU2WW+UZhUzHyDxjXZvLP4CCMhAOqP
         c63g==
X-Gm-Message-State: AOAM533mYQM2SpYqosgAhlJMM7Ju3SKHgjzyg4mCE9IUBtGCBNeUOipl
        9U2jB6w2/HHiUUOtOGKkAl+iQK36jWMUhYjWxwo=
X-Google-Smtp-Source: ABdhPJzJEWb+joXMDVexpJCSP4GK2/gVTdqHgeEG1LV/a9qPj9KQ4aEeCEThITIgoaYVhIBVJ2VOGAhAIR8FKAy4idI=
X-Received: by 2002:a05:6122:887:b0:332:699e:7e67 with SMTP id
 7-20020a056122088700b00332699e7e67mr1526528vkf.35.1647505917364; Thu, 17 Mar
 2022 01:31:57 -0700 (PDT)
MIME-Version: 1.0
Sender: davisbrook764@gmail.com
Received: by 2002:a05:6102:3053:0:0:0:0 with HTTP; Thu, 17 Mar 2022 01:31:57
 -0700 (PDT)
From:   Hannah Johnson <hannahjohnson8856@gmail.com>
Date:   Thu, 17 Mar 2022 08:31:57 +0000
X-Google-Sender-Auth: elIegHqlkfyHXQGX2LEs8dTpsGo
Message-ID: <CAE6EjdjMKz7hQ866FdY-ymD7xc_ca7k-VL6JNhTbqg2FooV_=w@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other
more better and share pictures i am  expecting your reply
thank you
