Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AEA451B05B
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 23:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231436AbiEDVZC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 17:25:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbiEDVZB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 17:25:01 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8C4D4A92C
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 14:21:24 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id c9so1896076plh.2
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 14:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MWDrNP0KVVRYtQ+s/Maj2xGGZgUlqoPwnuuSKJXHvFI=;
        b=KumagT+ulwEMT9XiJ9e4HVP6mkdQlDYEU2LKh4coIIMtKR4ch2Ifs2q/82h4nUlgBX
         gJzDkoqhZjeQvidleU5qYCDk2J0YkQm1g7bXEGLsm2ejxbd7z3w30rzLKCSY3P9U/eMl
         RVRTDSXasiIkEFcOyE84rBi+xLftsIVfa1v5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MWDrNP0KVVRYtQ+s/Maj2xGGZgUlqoPwnuuSKJXHvFI=;
        b=xCrlD1GwOO3hYgiDz+CleSAZmafE2gDvxKnkOo0E3gReLHa+i87/yDx14yPX3HgWs4
         cSg7uVyx32htCRRxNFlWP1IL9L4sb7YPx1SZ4xIkbHR/rFkXfaR4j77PgTSv+HShmFse
         jgQvqitJE3clippY0pMOBtXkwnpDnQqZaSaTmeLPv6iOJTlbWJf8+TQPTeZZ3C7FVRV1
         iAK/4kG9Wv3PdTO3/6OsE7h5/0hkukuubePb4tWzjSePd5AR3ewsLe8c+GZbvz8cw0LV
         oBn7MmQPRrNolCfZAyAnVB1f50tu3AWNkm/SnXxXYD3dzoXWM3vXyU2LHP6BZHrI5uq5
         wWBw==
X-Gm-Message-State: AOAM532NLOQGaWlfDG/GSpPpA1QYhlS9WmABBqq3lhAfc4hYFJdx9h12
        bVCZNhCdrTdwj/n8IYWcZAWnjA==
X-Google-Smtp-Source: ABdhPJzpy3iZLFBU9SDFj7wyNjGD0YtKH9znWsZw5WscqVIxRlIGYTkzrrQQ5Yrifudh350pFmVv3Q==
X-Received: by 2002:a17:902:e851:b0:15e:93ac:41db with SMTP id t17-20020a170902e85100b0015e93ac41dbmr21339660plg.26.1651699284488;
        Wed, 04 May 2022 14:21:24 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:35b6:c77b:be04:3bd5])
        by smtp.gmail.com with UTF8SMTPSA id l17-20020a170902e2d100b0015e8d4eb2ebsm8579531plc.309.2022.05.04.14.21.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 14:21:24 -0700 (PDT)
Date:   Wed, 4 May 2022 14:21:22 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v11 03/12] arm64: dts: qcom: sc7280: Enable digital
 codecs and soundwire for CRD 3.0/3.1
Message-ID: <YnLuUrVj+VK1ay5r@google.com>
References: <1651664649-25290-1-git-send-email-quic_srivasam@quicinc.com>
 <1651664649-25290-4-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1651664649-25290-4-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 04, 2022 at 05:14:00PM +0530, Srinivasa Rao Mandadapu wrote:
> Enable rx, tx and va macro codecs and soundwire nodes for
> CRD rev5+ (aka CRD 3.0/3.1) boards.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>

Carrying over from v10:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
