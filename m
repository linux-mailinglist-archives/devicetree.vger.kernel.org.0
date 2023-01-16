Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09ECF66BDEC
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 13:35:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229722AbjAPMf2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 07:35:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbjAPMf1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 07:35:27 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CA121E1DA
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 04:35:26 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id v19so24205601ybv.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 04:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/erdhCvJApG5+vMesdd42dNerta3+LyPUExayIGJPz0=;
        b=itZ+gDDTGwuqBx/tze1RvlEJN6u0EwoKQK0i1czQF/cl/UscOfz6YkJegbygVvnrMp
         tydo6HMMV5c7DobR3fHke+4bSyEgulQb0Ew+P7FzMYldQrV4/mZU4KB+y/8DCQzvuy7s
         MUhHh384PCVdpJ3iJPHcLbjwixsAx77cmLWOITqfCSi7LiLAsMmM8lLUqjn9pSBN61xI
         DOXsOIjgDXJkWQuxmXktlp/jOKVXc/MA8YsG3hX0qt328aaEpUEb2w6iE8J2AKtnxr1Q
         AhlcJa+r6B1r21bTWW0Vw0yIyTGxaOowB/tOLoCuveWnmUTZ2givnijP1r6RiIBvW8so
         ZKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/erdhCvJApG5+vMesdd42dNerta3+LyPUExayIGJPz0=;
        b=nuII3Uij1nDjytQ2cWUzMk1ADghkwRFFbcjbohWHv/C3oEyarlpzFc5jEe2MWumWaT
         1amleeHlPdPRRfZx4Mrc5pNLzVRRrcEy5YBat1fFFNcSdOxFPTG4OZRSZzkVlPYbD3oT
         TQ0v3EU8R33hzn/L/3e/1LhoTsnFP3jCvYuDCfol+GkWviUa2t2eZi0EQ9bh2DWsqvBQ
         y7pNVsX0N1PGi7cuKk0ZcbcSiCMVXDaWUfxSro8M2tcd3fNhHrZ28JLv+3kNwjzTANVE
         G0PhfBULKy78cHrxeSR2+JwQAZ3cJXZHYum5NRyLhy/b8zWjm5Pnr2aIF5/SGdPDvh7L
         786g==
X-Gm-Message-State: AFqh2kpeP61V/9oUC2U0BU3tmhsAKZ+27wZCHDykXBl0q2hkXycNW65B
        N3p+wWFC8sAthBelcw0ybRfO1qZUhPVAalCHddM3qg==
X-Google-Smtp-Source: AMrXdXt1WAMrSMDgrFvzDatVwEnbHDFT16F4YV0aLDOnGxfs2CR1LL+5Qr5ImSLTYmxCautE2oqiS8pGzCGYY5jDKcQ=
X-Received: by 2002:a25:d08d:0:b0:7ca:9b40:72a7 with SMTP id
 h135-20020a25d08d000000b007ca9b4072a7mr1821610ybg.130.1673872525317; Mon, 16
 Jan 2023 04:35:25 -0800 (PST)
MIME-Version: 1.0
References: <20230110200255.1218738-2-macroalpha82@gmail.com> <202301111039.dxBiLene-lkp@intel.com>
In-Reply-To: <202301111039.dxBiLene-lkp@intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 16 Jan 2023 13:35:13 +0100
Message-ID: <CACRpkdbvsFDDRt1otJcZ-mPdSBecL0cwDSW92YeBGmmyLXee0A@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] drm: of: Add drm_of_get_dsi_bus helper function
To:     kernel test robot <lkp@intel.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, tzimmermann@suse.de,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        thierry.reding@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        oe-kbuild-all@lists.linux.dev, sam@ravnborg.org,
        maccraft123mc@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 11, 2023 at 4:01 AM kernel test robot <lkp@intel.com> wrote:

>    126  static inline int
>    127  drm_of_get_data_lanes_count_ep(const struct device_node *port,
>    128                                 int port_reg, int reg,
>    129                                 const unsigned int min,
>    130                                 const unsigned int max)
>    131  {
>    132          return -EINVAL;
>    133  }
>  > 134  struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
>    135                                           struct mipi_dsi_device_info *info)
>    136  {
>    137          return ERR_PTR(-EINVAL);
>    138  }
>    139  #endif

This needs to be prefixed "static inline" like the function above, then
I bet it works.

Yours,
Linus Walleij
