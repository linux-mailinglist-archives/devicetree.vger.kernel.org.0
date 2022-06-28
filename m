Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DAED55E8AB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346217AbiF1N7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 09:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347138AbiF1N7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 09:59:16 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69D9F35DCD
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 06:59:00 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id i7so22305592ybe.11
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 06:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=Jh3M8LDovYWs/mBJiVJoI/DS8xun0EDDqspVSX/swmY=;
        b=jQAXgSnagPhLa0/RHDp/Vda+mnh5fSh4KIVAJR023/ez96U0Jw9lB6F6fbYI/4mKgv
         Dk0kZjL0BgUf1dQc6gvYNSQOkN4ab9sH0Pq4L9L8CA02hDAIjqcJmhfLkCQpnD1q6Ihx
         OvBI7FYLKA2ED2/qB7hGNtOyotUhRwqLuCDXrc+54NKfMUHJr8+/03cx4tjwdbA/PL6e
         kHogDtrq+FWBhjKxY/5KWs18SMNVpljkhRQFHWRf+u1s+HBCcrT+oJjW5JR4PvuqFBCP
         JRn8ncNyuJiSO3BcRIEr41wGYJUwtBqsETiPTloVas/5HOSgG2CrqG96VopYj8AFYU8b
         q11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=Jh3M8LDovYWs/mBJiVJoI/DS8xun0EDDqspVSX/swmY=;
        b=Bwi9CR7NpJIlflWU+tHvowxObEjtEoQYXLb5rSTipLmKTkxnliTQGBVrIlFNPuEaNl
         DPgNzMYAiaTEv3ungatkuIiq9eITbczvKVFtFgO+fKyIasYDCP+UEKp/RFewWXCH9AQg
         q5lkSQCLIopzPsgIhOg40/ol/UylfR69idYRmB/5WuUqKAn8rD3lfUuXaw3ORxyZXg5W
         CCQ6v1k0qP+MaJFx0RMiXJepIwyvrEbDauIHRqFIIB4/n6IAOGaSX6CC+MNjLgTpHtl6
         Qm1Z9uHfrhjwoXR53QsfJhao2SfKUgvhgf0k2vAYMRqSR9b2mLUqmZCErP85ShNFRsnm
         47IQ==
X-Gm-Message-State: AJIora/JwPwwtZLI7mNLRtStTwLRFnQjA5v+ukvMJlW6x6kxuBYzf0XY
        8izgqeiTD+5KpaO8OB8DdGWTfiOlrRVOMLxhat4=
X-Google-Smtp-Source: AGRyM1sWEAhEZYBaHMWGK53kmZAbyyZLUzqLdGSBU6WNMJF+4owN/B8/rjs9m+t19SouWtYgn/Q3uuJu9NMyCQ0riGw=
X-Received: by 2002:a05:6902:136c:b0:649:81aa:5f7b with SMTP id
 bt12-20020a056902136c00b0064981aa5f7bmr19675058ybb.303.1656424739606; Tue, 28
 Jun 2022 06:58:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:3248:b0:188:a53c:128 with HTTP; Tue, 28 Jun 2022
 06:58:59 -0700 (PDT)
Reply-To: rahmanahmadmrabdul02@gmail.com
From:   "Mr. Abdul Rahman Ahmad" <brigitteaoukpe@gmail.com>
Date:   Tue, 28 Jun 2022 15:58:59 +0200
Message-ID: <CAGE9d+HVYHqNYq5AF_Tv9-4-Hs48Q5+oihAz-NLAaKT2kPCL+g@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi   are you available to  speak now
Thanks
