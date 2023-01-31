Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41DC868360E
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 20:07:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbjAaTHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 14:07:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230261AbjAaTHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 14:07:31 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F1A15574
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:07:30 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id pj3so2284978pjb.1
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8UThqwbFRABkQnitMgzxc9jTTzlNDTLtqmSZ92i+I6I=;
        b=CPxloE79GoeQgAVTTwel+n4nBMIJ7pAt+4C1sSoAjvMaxr2o3gwZ3ZCTippw3UC7pZ
         9195+LPpyy/Z/ujOE3TASIXqv7YxubBoZjM7+zIFA7BGjT8bnVIWap8AkhjxP0dIHiNF
         gsCwvQT0/J9d3eAtCw6pafACBNwLMp8qpv0YN0yzFgInAiqCHjIw7a/mygt3EbjB65RM
         Bi2ECM+3QyaiOgpvgTMQmv2+oOItlU51Ht444MGb+BBtoWUTk+lyemnBr69oxkWwDUxO
         bKpbY6C9fcJuFEVyemUVs10es+/mqCe1W+VyOdVMImtQshWp5muxubj8lSPZ5N3WeOL0
         +tFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8UThqwbFRABkQnitMgzxc9jTTzlNDTLtqmSZ92i+I6I=;
        b=DHdziePY7gLNpj+tCwdd9N3D6BuFHDaHNDOvNPkSJ9jTEB+bjqnqnvLdJ7lxcQhzSy
         JB6WpQihhHanMD7moE9DvwrPdGaBpGYqkjjLVDfibZ38FCPo6lAv/CYyqujZHcJfXmv3
         mKAyVUBJd0TYmriEjc/n9c0rPEJt8WCfApMSjDNaDpp+LGFt8QGIBffc8cb4lWZxNuOA
         Jb3b6gcQdEpFQgl9EzVUBLMMfesPLEloPEjsX0RGtG8Pt8O6JELykkfAb44gjxSHmXQH
         rCbFj+96eOVbLRn7FoDSoewo0NzBIixPUOuRhvxrEU+N1GQJP3QLm1GMcqjp3rZkBPAv
         2M9w==
X-Gm-Message-State: AO0yUKVnV1xcnAIB21GnlfmpZ69+YtUkiFSQt0Zq/XhppecNmNP451xk
        h9QlawlRxn3VTU7CpHhu5ozOf0dK9x3wv+OxOFo=
X-Google-Smtp-Source: AK7set89ThtrnUTCvoILPpTmklvjzVNGrGFMwb5+kHj4ljNl1ZoRnpnotuvl+9kE4+/JvzsuTeiE9ilbeojxOwFfoGc=
X-Received: by 2002:a17:902:d4c8:b0:196:8bed:5358 with SMTP id
 o8-20020a170902d4c800b001968bed5358mr4462plg.13.1675192050135; Tue, 31 Jan
 2023 11:07:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7022:417:b0:5d:b43:a967 with HTTP; Tue, 31 Jan 2023
 11:07:29 -0800 (PST)
Reply-To: mrsmargaret1960r@gmail.com
From:   "Mrs. Margaret Christopher" <olwazbusy1992@gmail.com>
Date:   Tue, 31 Jan 2023 20:07:29 +0100
Message-ID: <CANuC9qJWWtitJ59TSyzUZjMtegm8e1Sr_NR+ZQQ394yniHgaUw@mail.gmail.com>
Subject: Hello Dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_MR_MRS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear

  Am a dying woman here in the hospital, i was diagnose as a
Coronavirus patient over  a month ago. I am A business woman who is
dealing with Gold Exportation, I Am from USA California i have a
charitable and unfulfilling project that am about to handover to you,
if you are interested to know more about this project please reply me.
 Hope to hear from you

Best Regard
Margaret
