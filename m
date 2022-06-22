Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4F30554E34
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 17:02:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235799AbiFVPCO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 11:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357949AbiFVPCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 11:02:05 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0D3A3CFF9
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 08:02:03 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id w24so7892892pjg.5
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 08:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=vhZEVnaGNBjosB86GDUW8b2wHjB/+QU31bPXl36TqFE=;
        b=bOIblDT7+P2BBNypX05Nisr9+JiNO30n5N0+Z8TsF8G8ewS1QQZ2blbKxZ3afwl4rb
         Y1R7WjL0nQm22vyflOQhEeZFDRruhD2rMxeOQYEfpEV7tW8n/ju9SzNMyVgL9BE26Vgd
         FPoyWluWkn5NNuhlxGiavmntWuTzVXfRo77wVsa62cPMStB3JdJrYD+wkVfiN1rNOqNf
         ZyyclRAod0inNVFoU0jnQ0MB+3irBDVq0/iOt9ZwHBKVlY6XDu+4VLY2EYKpkm1k7EVM
         ihzj2OoXiiZzbOIYCo0kkkYO8bFuNsaV/VkYkiSxlxuYsSK8SV65II48K4y9ptx1O0B4
         3BVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=vhZEVnaGNBjosB86GDUW8b2wHjB/+QU31bPXl36TqFE=;
        b=tWP6WQWpmX4cSPQ7JT2mHK/wEoulFniTT/ZxXZMmAuHQI+e4nHLq6HuDKRO4LNs0ii
         A/7hgnOQnMJCGqk9moL0+9Qjl9H1AEEFne9+y8Suy5Zj+Z6+bdUnzCg3U92diql1Y6uI
         WnU05xFtPSHukx/NVvPwCVmfdvO7cPGS1c6ReRHhslYbMkysSsU3sAKdv2qZ1NWjN0Tx
         DjlIjIp3IlSZMvV5O2gk+hAgSD6+H6TSj5Zlsabi0Htbjg8aLfHBJTWlv4m21foKsArl
         LHIXeYvS2Jb3ML8bEm0ex8u8EARi4FLVW06wkiZ3gatPjkH8yfXYRbm87f/WXDxpm5x2
         z57g==
X-Gm-Message-State: AJIora/rgZQGON5niSTPnRxVWkl8OFjWMKN/3qovB+fk98ZsBIVyG0XC
        T9xMnErqzdn9J68LTM+TzyHK/wjjVGdO038PmTA=
X-Google-Smtp-Source: AGRyM1toIig5ko4X91q4CAxDqQnZnwtT8qlWTs7GRjU3136Ss298ySYrx9golUZ8IsMMwX5SjEXNFGkkdWK3GEMPZ/M=
X-Received: by 2002:a17:903:2cf:b0:151:a932:f1f0 with SMTP id
 s15-20020a17090302cf00b00151a932f1f0mr34621367plk.130.1655910123205; Wed, 22
 Jun 2022 08:02:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:903:2308:b0:16a:1b3f:f74b with HTTP; Wed, 22 Jun 2022
 08:02:02 -0700 (PDT)
Reply-To: sales0212@asonmedsystemsinc.com
From:   Prasad Ronni <lerwickfinance7@gmail.com>
Date:   Wed, 22 Jun 2022 16:02:02 +0100
Message-ID: <CAFkto5u=T4juAX=CPEE_uD2VPgpXudytrSqLxDGkEyhnZpoy8Q@mail.gmail.com>
Subject: Service Needed.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_20,DKIM_SIGNED,
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
Hi,

Are you currently open to work as our executive company representative
on contractual basis working remotely? If yes, we will be happy to
share more details. Looking forward to your response.

Regards,
