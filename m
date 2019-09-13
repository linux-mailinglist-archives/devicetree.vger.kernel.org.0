Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 55B89B245E
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 18:48:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728811AbfIMQsa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 12:48:30 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:38521 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728890AbfIMQsa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Sep 2019 12:48:30 -0400
Received: by mail-pg1-f193.google.com with SMTP id d10so15543829pgo.5
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2019 09:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gW2N1i3dQ1/II0tw58Dh1ejmikzhZEzu/mpUz8rB8wk=;
        b=NhMy/APOmMD+MCKdmXfxHm15pnSkr8an9PegqY0Y2Oaciv+OcSVZmqxex01mJc+5jf
         cdMMZw1sGC+Ywi9p0oLMw48fEOXjM6aQXpiIk5VnLV7EQeLKPbVtnMf0EyxbjUl+rwbX
         DyNm9MhF2SIUuSkrGoH6GkyCng7qh59zPzlsuSv16seUQQU2XHwC40sTnBDFF1z6NM5f
         GJZbN71I6HtwC/WnUiTC66jcwyls4kcpAw3ukVubDfVNqixpHQE2jhP7Nx9npuObsL+4
         FVpSRlyda2rbpCVgArCxOGK9YNb3IGrbqpngzTx63It0EijmPCdGy4JlT/Zmn+VctU8L
         RLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gW2N1i3dQ1/II0tw58Dh1ejmikzhZEzu/mpUz8rB8wk=;
        b=JqSWii2W/lGRqvmDWGeCw+XrPG/uWBVNLymF5sLIjCLPo2PlJmRcpPIIMAn6pN4siO
         P5VB6r/L7Lp1cn6L0Wx3iXsnlNmdJk8FlW0cszAzs3+zRVL8IC7jG5H19r2U77gJI91a
         iRfwX2vXMAEddgwoXIItRkg4YPc7JHBErf5KA0/7aPg/9oXCFHKnk+1yoJJ2terlkep+
         uT7BP8U/D/d/OS0pxFJHgwnC6C6Kyp/SCsfz1Lw0hi24rIgJx+zodGlSf6yHr05oE0ow
         f8duydLjRNXfA3eawosVJhJFxkNquP0nY7uMe2JS5f+sXYbZjfF2fVs7ybXSAuC1E2Rl
         rO2Q==
X-Gm-Message-State: APjAAAUrhtEowC4dygCOpAXr9bC+e5IHsf5tWT60dFwXNdaVhvhkOm2s
        r1RLAAdSwT9jBqPha4Q25/jp/YbkglI=
X-Google-Smtp-Source: APXvYqwBu4eLOKb28t6qtNtdNBCKtNWHQYJ5sXVXd/zYhLtXCm0scT1SEcsP0hEMNdo7XbVmtYvSqw==
X-Received: by 2002:a17:90a:cc04:: with SMTP id b4mr6039257pju.127.1568393308933;
        Fri, 13 Sep 2019 09:48:28 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
        by smtp.gmail.com with ESMTPSA id v5sm30831622pfv.76.2019.09.13.09.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2019 09:48:28 -0700 (PDT)
Date:   Fri, 13 Sep 2019 09:48:23 -0700
From:   Brendan Higgins <brendanhiggins@google.com>
To:     Eddie James <eajames@linux.ibm.com>
Cc:     linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
        joel@jms.id.au, andrew@aj.id.au, robh+dt@kernel.org,
        mark.rutland@arm.com, benh@kernel.crashing.org
Subject: Re: [PATCH 2/2] dt-bindings: i2c: Aspeed: Add AST2600 compatible
Message-ID: <20190913164823.GB52781@google.com>
References: <1568392510-866-1-git-send-email-eajames@linux.ibm.com>
 <1568392510-866-3-git-send-email-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1568392510-866-3-git-send-email-eajames@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 13, 2019 at 11:35:10AM -0500, Eddie James wrote:
> Document the AST2600 I2C bus compatible string.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Thanks!
