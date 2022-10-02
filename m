Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 057B25F2152
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 07:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiJBFEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 01:04:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbiJBFET (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 01:04:19 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEC734D82B
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 22:04:18 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id 10so3560506pli.0
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 22:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date;
        bh=BP98Qhg0Vw2/EI4u+dbuEGMcjtMFTJLF0hbSYcg2sjc=;
        b=B75SfVi7GE1a59BQ19FY8dMR95EdWDvG056LAM3W1v5OsVKTIVeJA708iLDGJszNcl
         nL7kKQVb8B8CGaSKEZS94Ypyt6dGStNMh8/txwNqeuRhQMUeZdU3Lwm7fL3awxWTHCO0
         +GD9inIJRpQ2RHLI14TtVXihGLywdubOSZdaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BP98Qhg0Vw2/EI4u+dbuEGMcjtMFTJLF0hbSYcg2sjc=;
        b=fhoev3SjaHNJJOXmDQWyU/XucLAxhtIsBhfcBm0OaQGfxYYU5VfvQhngPZofH1lowk
         IIhgEdttWZ6LI0bl5QC+nzArIY83pwdIFOzPqnyOygXMxushathgcdadiRbyj9G2LkQZ
         2i3pZwfzeIhzyszGy+dYsfAf7RmNLyq6wZCXkE7iUhUdbFLiGjzbYsS91Hua7+NxAT+v
         FcG9cUvfmcfEgWBP/QzvUdFTsawOxY5ZAT4WjmJ5mk6GnKN3AfDZ9P107YNeIzWS/2sq
         YTg+JGaDwe0ZYgex8Q+tJom0Ym2naUwVU43iFgB4zoKG2RVnYaDGnxjmZJtNpfRrd21y
         YmuA==
X-Gm-Message-State: ACrzQf2gbYwwXpDjV117xyGzds3Eh0+uTc/nsUas1qPa8fdRYBRzc3Sa
        4JK082L3HG+EdE5XOA8hPp56yw==
X-Google-Smtp-Source: AMsMyM6fKXAMxCLETcr2reyfv3XA8+n9bfpgE+exQbP07iXDVQ553zrPhshj7qa+8b2wTMH36p7m8A==
X-Received: by 2002:a17:902:e5cf:b0:17a:af:d828 with SMTP id u15-20020a170902e5cf00b0017a00afd828mr16435963plf.127.1664687058264;
        Sat, 01 Oct 2022 22:04:18 -0700 (PDT)
Received: from [192.168.1.33] ([50.45.132.124])
        by smtp.googlemail.com with ESMTPSA id k14-20020a6555ce000000b0043057fe66c0sm4330069pgs.48.2022.10.01.22.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Oct 2022 22:04:17 -0700 (PDT)
Message-ID: <a9a94d2d-5379-7e0b-b27c-cad0f569a773@schmorgal.com>
Date:   Sat, 1 Oct 2022 22:04:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     kbuild-all@lists.01.org, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221001200039.21049-3-doug@schmorgal.com>
 <202210020642.ts8UPw06-lkp@intel.com>
From:   Doug Brown <doug@schmorgal.com>
Subject: Re: [PATCH 2/2] ASoC: wm8961: add support for devicetree
In-Reply-To: <202210020642.ts8UPw06-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/1/2022 3:23 PM, kernel test robot wrote:

>>> sound/soc/codecs/wm8961.c:974:34: warning: 'wm8961_of_match' defined but not used [-Wunused-const-variable=]
>       974 | static const struct of_device_id wm8961_of_match[] = {
>           |                                  ^~~~~~~~~~~~~~~

Oops, nice catch by the kernel test robot. I will submit a V2 patch that
does this part exactly how the wm8960 driver does it, including
.of_match_table in wm8961_i2c_driver. Waiting to see if I get any other
feedback on V1 first.

Thanks,
Doug
