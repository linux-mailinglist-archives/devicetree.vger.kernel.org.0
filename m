Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 211C85F8532
	for <lists+devicetree@lfdr.de>; Sat,  8 Oct 2022 14:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiJHMUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Oct 2022 08:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbiJHMUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Oct 2022 08:20:10 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21DBC32ABA
        for <devicetree@vger.kernel.org>; Sat,  8 Oct 2022 05:20:09 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id sc25so10195890ejc.12
        for <devicetree@vger.kernel.org>; Sat, 08 Oct 2022 05:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+PAI4rgqgu8lkz8iluiDX4+RYG6mJwQ4g48BRbmTMI=;
        b=qkAVDJ50venL9IfZFSnLWIJB7ubWTszdfR5NtvvsuGblmlYu3RiK2v0KG1SV6ATYR7
         zLMifANkEfmCueE0rn1IHkTuuVzTxs4A3sSTnFggF35GP0vGhRghDdTZZLxwVTrhvCPr
         7hKjsLiOzGZu/DHwlvB6HcAQEeHZRLq4pcGmwDf0WL+yisdLP0WjQmf5uJcoXVqSLKMn
         VzVNQ+4DikXUcztE3r4zqIZG1ms2Jac4pMGo2I94PsXvikO4lsBzjz1hi8P0iGFnpWEr
         stnv0mJ7FhIU1d5p9RZuASqo/b6072AepUeV6XqSRlABqFT8Q650zkD4BGXLaYYN3qQS
         yqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0+PAI4rgqgu8lkz8iluiDX4+RYG6mJwQ4g48BRbmTMI=;
        b=WZ6hWneL/snDr1hx76/tkRxHRnKPnx082a5qk5xlYTBwgo4DSkygGYdKZ4A/T8T3f+
         NcE+01QZmJO1DS8GAUEaCnctR3NMC4jU1W9wEB/D6aMDp8oNHzjwzj7Au3SDv/EOHxzL
         oQrOS61WNYfcb75SxzyKOTbI/7qmiLLkOie6lJWckJKEfuFJwbnA2P5ZschVGhDjtTCS
         NtN6bGh0cZDBFFFjGcdzD/513uDQCEpzS+c9M2KQjeQ5AWPsP9Qlz8VxyTCP4a44B6w0
         VIewX+EqvpGjViPnJHZeFNOO0iOY8vGDbq8cnLhsCFqcma542bnsDOCytTEn8TdOaaYQ
         QmsQ==
X-Gm-Message-State: ACrzQf3WIJ0qt/wQSP7cQcsnWGW7mWmL9ynqqEiND4xW4nc5paRHMkYn
        nFn2EPM9e8ORXIXPIN2mX3eQ53LOw+6pNATp7vc=
X-Google-Smtp-Source: AMsMyM4j2W/smgsdQfb85HIA3IVpIK3q1FCaSjFOcDACGUxsA9Zb27AFpGYWxK9NC3YswVNTBFB43pj/jc/yJXIG1O0=
X-Received: by 2002:a17:907:3205:b0:770:8554:c4ee with SMTP id
 xg5-20020a170907320500b007708554c4eemr7783564ejb.39.1665231607368; Sat, 08
 Oct 2022 05:20:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:7216:b0:78d:1cc6:c625 with HTTP; Sat, 8 Oct 2022
 05:20:06 -0700 (PDT)
Reply-To: illuminatiinitiationcenter8@gmail.com
From:   Garry Lee <kasuleseresty@gmail.com>
Date:   Sat, 8 Oct 2022 15:20:06 +0300
Message-ID: <CAKr2uoCOFfrCSELWtFfkV2hFCYMH8W6LDfcEJndTqkS+cp8mdg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_FILL_THIS_FORM_SHORT,UNDISC_FREEM,UPPERCASE_75_100 autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
DO YOU WANT TO BE RICH AND FAMOUS? JOIN THE GREAT ILLUMINATI ORDER OF
RICHES, POWER/FAME  NOW AND ACHIEVE ALL YOUR DREAMS? IF YES EMAIL US :
MAIL: illuminatiinitiationcenter8@gmail.com

YOUR FULL NAME:
PHONE NUMBER :
COUNTRY :
GENDER:
