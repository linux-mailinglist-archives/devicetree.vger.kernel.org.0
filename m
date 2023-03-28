Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F08626CCBE5
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 23:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbjC1VIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 17:08:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbjC1VH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 17:07:59 -0400
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6512FC
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 14:07:55 -0700 (PDT)
Received: by mail-ua1-x929.google.com with SMTP id 89so9960334uao.0
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 14:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680037674;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thpW2yIVRuQD3Ko7WI8K4xaeuPEUYZxxJQxPTk5qMCw=;
        b=TDuXO9myu47KXaFFpuTiJWv2mHQABJaL6pDxvDsESiYyiIUFM7Wn7IYJ00HA68x3X+
         6SuHcW9h8UWNhoinV2+UffSqUcyu8yjYICJzumTi5x+cWheT1fFn0OlYBWDhkL0UBmfG
         7yq1E4N2Ro5v79zkOcsqBQVDwdyL5Rh3po6lQMmMnzx7R9K++FBkExFsKsXxgzWAqNZc
         olUcc3mZL0z6qmmj9/cqxY6cgAot9impsfsjGVZ9x6HKvBV7hB2WI3jerZZDesdA4M2q
         /q+VCNHxmHjrxTgVGcHyH7+68CoIQhIwC4PJkNW2v6Vfgw1LTUzHvLMyvmtx/6c4ta17
         bruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680037675;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=thpW2yIVRuQD3Ko7WI8K4xaeuPEUYZxxJQxPTk5qMCw=;
        b=fGDXgFebEkVuke0Ya9tWh+9fX8inwC+pgNP48AIbK+ZlZCNTSQruLor5nTrYO8j+f3
         08G3bykaiHa9ygF7aUA9DIkiH8UmefVdcHn+qBi3GjxKuIZHQIGSXik9E/OTxF2w9lzI
         OZ2tDromDueN0Pufw+jH/+t3H4nmHxXrs9B0Kij+kyxuDSxFeYedUikwgUeQzP2rTj2y
         J0RwnyZQEroS7B2Xh24EQuhNa4LREdKbKOTpffIONX3z1Pmesmwws2nhbU0CnUSFBsCW
         tF9iffs7LuN1t7KmWYuTvwiuVTZ8z7cMIHILlvqIzpF/LxEFWENbknrKrj9c9+b3b0Ym
         uHXw==
X-Gm-Message-State: AAQBX9dwgcrfiYcEDGBZjEV5mYrGUpMF+H4p18YUtaPVe3S1YVAhQvQq
        AYzOttO/RIr4qk42xDqNZW4wXe8GHYAnsAKBlXs=
X-Google-Smtp-Source: AKy350aSuw4SJ78hp3o1v0zusR2uRGHLa9jxsNyaSqj+DcB6mllBqyCvcB9dygUMy/Qn+0j+PPl02H0xQkp9hLYiE98=
X-Received: by 2002:a05:6130:a6:b0:68b:9eed:1c7c with SMTP id
 x38-20020a05613000a600b0068b9eed1c7cmr13205168uaf.0.1680037674809; Tue, 28
 Mar 2023 14:07:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:adce:0:b0:385:8ff6:27be with HTTP; Tue, 28 Mar 2023
 14:07:54 -0700 (PDT)
Reply-To: jennifertrujillo735@gmail.com
From:   Jennifer Trujillo <edithbrown035@gmail.com>
Date:   Tue, 28 Mar 2023 22:07:54 +0100
Message-ID: <CACFcicg-ZAZRPNuWKqTb4J8fv93WmTzaUHvqCMbEe8SE1wC2cA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello,
How are you?
