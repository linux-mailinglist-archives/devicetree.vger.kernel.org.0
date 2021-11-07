Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3DA44758C
	for <lists+devicetree@lfdr.de>; Sun,  7 Nov 2021 21:10:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbhKGUMs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Nov 2021 15:12:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbhKGUMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Nov 2021 15:12:48 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECFEAC061570
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 12:10:04 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id x27so31533621lfu.5
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 12:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=msSuyuNN1qGawUOx+wJjclYFd7Ehg7HyYzhPy0YPAk0=;
        b=IN2RRNGntX9tMVMocKjOGDRhyawZPt5ubBMt2sIibQ4/3/uyNJGSQZs0B5A2mA+Vwg
         47CEAgZdJfT8BOj0TFzpScDZIHYaimQDj9wIimPH499GqeHDHzs+cwe20h1SK0zEsycz
         NKovjHKpNQycC2VDmvSlTyLDpHm8O6FzZEIzIp4yxPZq3LRtCY31XLbzAlSKXaBsWX96
         BGj2hdVg+3GZX1vx8WFWDfFf4vt/C7o/JXfNoSuX3oIN+OLMw2XGsrEJAhL7kMZEcO8L
         vMnZ/qgKRFJAnpyNIb2OlaVwX0eWXdbHSOJjQUljP/Ha79yw3ZF2yPPFxtUaPcqlIgei
         A3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=msSuyuNN1qGawUOx+wJjclYFd7Ehg7HyYzhPy0YPAk0=;
        b=qX5OsV/VTJwYxUnUIylMvOwWwl+oJUD0X/ebjYQpj7xw/zHxUpntN62VT17Co269E9
         yDr3eDSAmm8PGDAw5C5C9v8fxM+EOd3wGmxP9Q7pyWGnwsktd4eSkvU1zajNflk9eBvR
         Zwh3+Sd3EVXWz9VuQiuerEhc5grMK1QQVdXz7a+o0kbOxy7IrY2I0u7rV6udMNgSjRm4
         nM8VIsNaLUct/7QAaEg533JZUmypaetjOAOtVsRlDb94JWlKwI7HsQ1i9Yym8eq325u8
         S8D8pjbIAQP9UxoiCVFWHo9wHADND8nq1sdVOYlkqmVJVeXD/tmsvRzWOVMlObdF9WAH
         I6Dw==
X-Gm-Message-State: AOAM53207StES+oSgGWkFVrYwznvgzTrTZc2ZpWI6isZHhZQjya/oDxX
        Hw5BLuOcYJ9A6AcB3+SmzIMHcTmAhtQ4igTtMbI=
X-Google-Smtp-Source: ABdhPJxlha4bkZYw2mReLfelE1Voe56yJhVyzHoqZbNfN5TxChPMse9i4MP30D1/0hvjsl1TmtTHP39catMZ1dGsrLA=
X-Received: by 2002:a05:6512:b8f:: with SMTP id b15mr4291938lfv.443.1636315803178;
 Sun, 07 Nov 2021 12:10:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:864e:0:0:0:0:0 with HTTP; Sun, 7 Nov 2021 12:10:02 -0800 (PST)
Reply-To: cja6665@gmail.com
From:   Charles <allenbarry6654@gmail.com>
Date:   Sun, 7 Nov 2021 21:10:02 +0100
Message-ID: <CAEdKyV5mPbY7MfN0U8U1ms1mWd3A05CWXtS_G1bWGhYHCSW=_w@mail.gmail.com>
Subject: RE
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
YOUR EMAIL ACCOUNT HAS BE SELECTED FOR  A $3,500,000.00 DONATION FOR
CHARITY. PLEASE CONTACT US FOR MORE INFORMATION
