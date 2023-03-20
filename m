Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF6A6C1125
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 12:49:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229967AbjCTLt5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 07:49:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230161AbjCTLt5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 07:49:57 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F80A17150
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 04:49:55 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id k37so1576980lfv.0
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 04:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679312993;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=IJMz0lfhdxemIzNhda2BMTeJxrc5hfxr1lxMcQ32S+mTyrpDxWXaPpzZ5wZpMFEmvV
         ZfCZPyz7oFoHORX+CE6eyBulPUHTvyLd3S5IU9xeqQE1tBuvylCcKgsC918+NmLMFnNA
         Gtwz03LuN6I6bj+Dixjg5vvgGLgIANTxvqOQZXln1MReI8KSJLKTNjkdNGwlGxu9IiKy
         EZjirZftHm1RkC/3kFaAURCH8AxlyvgIbAu4IljDN/r3RJolq1a0ZfpIeKiVTQ8THqrF
         XZQvG2TgSmuZW6Eh8wEwjlBfuVitEJAKkUKSgVwd2FJNBWcthI2gg8g+qW4gywQHWE8n
         aaUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679312993;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=cQp5Pl5mj3+wW6ZXUPdvzoAlWhvhQxzwyd6eMr6VB5l/9vNqR25aKv8vRgNknxMtFu
         mmfQHVQzmpre9xwHJVpUI04J25pMEpbYHmQVfs/43noK3E2/hwnw6VKAX3ZOR9upkyHK
         R6eVrqcR6z8mrYInQJfN2qfLrPj/oU8ebsfqaNmBjVoZntj+OroBHVAWJc1VkVMR+Np5
         1qiUbAvHmi/0KYI9fLjUK3ERmqsPERFRtTvGsTsT6+Ea/aWNVGC44FNZQ9UZ0jOYBK+5
         nA8Z415yJfubyHsCKdui8u2xxyZcH/T86Qsu6lLxDyYz/xgwDpVH2xcaMYXNOIFc2n0P
         pw1g==
X-Gm-Message-State: AO0yUKVUR4eD514E04zXBq6k5Kbqt6dVWKIA19xiP7b5S4Go+/9Rkxz/
        GiTXqN+B8WhMau8yS6ZiMtfVXriB9eHV8LX+ytg=
X-Google-Smtp-Source: AK7set/uN5BxZED4hHj33Nj1jruAulSNolyqvRDj7ECtsykKPrnowhYtzrbwDXKxJ4RrHGuRJUKK/2Ns1F70/sdcxWM=
X-Received: by 2002:ac2:46c8:0:b0:4d5:ca32:6ed8 with SMTP id
 p8-20020ac246c8000000b004d5ca326ed8mr3548609lfo.6.1679312993364; Mon, 20 Mar
 2023 04:49:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:73ca:0:b0:222:5939:ed00 with HTTP; Mon, 20 Mar 2023
 04:49:53 -0700 (PDT)
Reply-To: contact.ninacoulibaly@inbox.eu
From:   nina coulibaly <ninacoulibaly214@gmail.com>
Date:   Mon, 20 Mar 2023 04:49:53 -0700
Message-ID: <CAL5O4-EtwZwzjFmLGQ4bWPjhWYkgQooSgjV2UdKh+kvn16erxw@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
