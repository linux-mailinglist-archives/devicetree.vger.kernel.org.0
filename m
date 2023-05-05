Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 382FB6F8C4F
	for <lists+devicetree@lfdr.de>; Sat,  6 May 2023 00:21:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231840AbjEEWVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 18:21:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbjEEWVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 18:21:03 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09470EA
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 15:21:02 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ac74633339so4193651fa.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 15:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683325260; x=1685917260;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ecYicVNlqCwpTD7keug9XpsIRW3LWPQcbFkS4Vo5hc=;
        b=PZ+wV1I9vR6uSFxCpfwo9mBqBn0KRjhdZcpscZJpv42P5Syrv3GlyzbCEEkNVPzlmN
         t7k0zQYRH5Vkk4XN0wtEyt4mbgtlzp/UZDymL9Fk4V1uGDlmgEjqLjUmzq5j/7qYqNHx
         ApiPSn8Iy4vAEIjuF5UgsvxiWpEG6sB3MztIbzUT9oKvdJZnxOMJGdgsXZnKCMMnQ3D3
         EvqxUGpwVj7LUAoktf/hUDVt/v5KrOUezZeH/v0vAxkSwsABwXF0Qo+LnzMu2V6achCu
         dFQfF8WD7xVAqb3pNV//avkFaDc6AfbXyuTvHl7a2OCRgWZchvT2ynOq61V/2xXYoSvx
         1lHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683325260; x=1685917260;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ecYicVNlqCwpTD7keug9XpsIRW3LWPQcbFkS4Vo5hc=;
        b=QWJ0brjYr0dB/JSC4AXCwf0+yjeKsUHByZCr2gzogMLpRFTgqWP3f9MwxrFw/cWQKg
         cpVr7nEpee6gu8GEnxplWBFcmePWKlihzm4TepwqSaCG4Q33DxFC8QjT/gsS5tTA4xqY
         QMjfwNZ7DMtJrL7QvAcuy2FypHLnvoft6wQg6eLyTcYns1cZ1ojqw43jFQg+F2AlpVRM
         xLy+2ilNDjGBcOMRTyppHh5oAncCdNMr+L9+29t86LA1O0QXl06QdghP5Cb5CFv2rYkh
         SPs54O9ToUnK6oyPk+VTADhEsYGsrUwzcRbj34KqAPauoC8gQSK4WRxU2mvAxWOHaWul
         TyRA==
X-Gm-Message-State: AC+VfDz62+iBgpLYbYn5oh3kVUSp6DS4ydLARmwD9WW6Eney0SuuPQpZ
        uhq+1+8zd7bLzKFV4yu7gSNug/RcDtcVdJu3dsc=
X-Google-Smtp-Source: ACHHUZ6Y1jtAz8pu7XmghqIeon+YsUHQesyvoF2exE3wUMmvTPqNC0i6GxiBrQiWZhpqOtOTxcAAlGE89cPnxRX/mFM=
X-Received: by 2002:a2e:1f02:0:b0:2a6:142e:ee70 with SMTP id
 f2-20020a2e1f02000000b002a6142eee70mr839611ljf.4.1683325260130; Fri, 05 May
 2023 15:21:00 -0700 (PDT)
MIME-Version: 1.0
Sender: innocentyakububawa@gmail.com
Received: by 2002:a05:6022:51a8:b0:3b:757e:d7cd with HTTP; Fri, 5 May 2023
 15:20:59 -0700 (PDT)
From:   "Mrs. Margaret Christopher" <mrsmargaretchristopher001@gmail.com>
Date:   Fri, 5 May 2023 16:20:59 -0600
X-Google-Sender-Auth: 2Xo6camzfWssG1NwlMNx5R9IW_4
Message-ID: <CAO=JbK0z5byRkkN0HdRqKd8bjUQ6z4rYqVpWsSLJnPzonrt-0g@mail.gmail.com>
Subject: Humanitarian Project For Less Privileged.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear

  Am a dying woman here in the hospital, i was diagnose as a
Coronavirus patient over 2 months ago. I am A business woman who is
dealing with Gold Exportation, I Am 59 year old from USA California i
have a charitable and unfufilling  project that am about to handover
to you, if you are interested to know more about this project please reply me.

 Hope to hear from you
