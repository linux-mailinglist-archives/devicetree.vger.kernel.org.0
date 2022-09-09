Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F5375B4307
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 01:24:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbiIIXYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 19:24:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbiIIXYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 19:24:00 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 841DD804BB
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 16:23:58 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id o25so5465621wrf.9
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 16:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=bRaE9VlG8rxXV8LOLxE12g2wr02ny6fYaneIhHeaMW0=;
        b=X4GXKUaqUzCBKA2kMpVzwpZeUsxbYvbj0Sz3zFSstJI0CGKQvAd3GjZa0cT1guGJIS
         J7Utp+0TDzpZn1xLEuTusL01ldDVjccil49/h+TQU9hsgsEoYUUuaY/ADESkB9QFpUF+
         Ssv2s9jBgQasDaVDLqekt/5mwh9d87KNgcmfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=bRaE9VlG8rxXV8LOLxE12g2wr02ny6fYaneIhHeaMW0=;
        b=wzrw/FmnZNWV9VLBbJC9Hple+xuvu8ba93aE0+sbfXcoXAahD21gZpfU4thSBgGZ0a
         BBBMxvDTm+rGw9xIGKwwkOazvMHAqajwGKHffu++9IVRQZLIjYyPsRkiNjLzLJEZ0eTw
         RBYzvEd5NI1hjZstPxS4AoDG2yWvP9IC7LJE/tnedaIbRd4tHl0qiJXWJOGOJK2uwbcX
         uKvzcBv7SdX1YNMlJOqdzZwEuze6BXvnSCoJMDOr+qYutHH8YuyVviK8hCXp98VBNzuu
         JTKd2nPAOFxH5g5fzm1t390JuEOhBESmd5O3NE4yF7NEczGyVW9c6tUtqOTQ+mchbk0C
         aPSQ==
X-Gm-Message-State: ACgBeo2ZFXKc3DfAnP6HFgPHq6l37CjuNaGMj/CT69GbcA/grcPdkxx4
        y3pswPRwOtu96fWxqDWtRzWV7xcAv/C6uQswEfjSZQ==
X-Google-Smtp-Source: AA6agR546eH6QhOLWF/Pn2ZwTB2XiRBT33HV0pbKqrfPt5VFQ8uLshkpCPEmhxdxdqcjvfcY/iuoAXTL7HTLGwUDHwI=
X-Received: by 2002:adf:e306:0:b0:225:618e:1711 with SMTP id
 b6-20020adfe306000000b00225618e1711mr9175141wrj.407.1662765836972; Fri, 09
 Sep 2022 16:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220907232914.243502-1-jwerner@chromium.org> <20220907232914.243502-3-jwerner@chromium.org>
 <5b3014f9-d827-f1e7-c44c-162c4443f36d@linaro.org>
In-Reply-To: <5b3014f9-d827-f1e7-c44c-162c4443f36d@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Fri, 9 Sep 2022 16:23:45 -0700
Message-ID: <CAODwPW8nmAFysGOp=QUcnOxiRXJTh-1RFGFUvYHy9Qggz=LkvQ@mail.gmail.com>
Subject: Re: [PATCH 3/4 v2] dt-bindings: memory: Add jedec,lpddr4 and
 jedec,lpddr5 bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Does not look like you tested the bindings. Please run `make
> dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).

No, I did, and it found plenty of other issues... not sure why it
didn't find these ones. I have yamllint installed, too... strange.

Anyway, fixed the issue and resent this as v3.
